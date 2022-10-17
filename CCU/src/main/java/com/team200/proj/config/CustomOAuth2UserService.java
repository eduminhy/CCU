package com.team200.proj.config;

import com.team200.proj.service.UserService;
import com.team200.proj.vo.UserVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserService;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.DefaultOAuth2User;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import java.util.Collections;


@Service
public class CustomOAuth2UserService implements OAuth2UserService<OAuth2UserRequest, OAuth2User> {

    @Inject
    UserService userService;

    @Autowired
    HttpSession session;

    @Override
    public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
        OAuth2UserService<OAuth2UserRequest, OAuth2User> oAuth2UserService
                = new DefaultOAuth2UserService();

        OAuth2User oAuth2User = oAuth2UserService.loadUser(userRequest);

        String registrationId = userRequest.getClientRegistration().getRegistrationId();
        String userNameAttributeName = userRequest.getClientRegistration()
                .getProviderDetails().getUserInfoEndpoint().getUserNameAttributeName();

//        log.info("registrationId: {}", registrationId);
//        log.info("userNameAttributeName: {}", userNameAttributeName);

        OAuth2Attribute oAuth2Attribute =
                OAuth2Attribute.of(registrationId, userNameAttributeName, oAuth2User.getAttributes());

        var memberAttribute = oAuth2Attribute.convertToMap();

        UserVO user = new UserVO();
        String email = (String) memberAttribute.get("email");

        UserVO optionalUser = userService.findByEmail(email);

        if (optionalUser == null) {
           
            user.setId("email");
            user.setUsername((String) memberAttribute.get("name"));
            user.setNickname((String) memberAttribute.get("name"));
            user.setEmail(email);
            user.setRole(1);
            userService.signupWrite(user);

            session.setAttribute("logId", user.getId());
            session.setAttribute("logName", user.getUsername());
            session.setAttribute("logStatus", "Y");
            session.setAttribute("logRole", user.getRole());
        } else {
            session.setAttribute("logId", optionalUser.getId());
            session.setAttribute("logName", optionalUser.getUsername());
            session.setAttribute("logStatus", "Y");
            session.setAttribute("logRole", optionalUser.getRole());
        }

        return new DefaultOAuth2User(
                Collections.singleton(new SimpleGrantedAuthority("ROLE_USER")),
                memberAttribute, "email"
        );
    }
}
