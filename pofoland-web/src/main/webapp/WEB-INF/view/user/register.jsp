<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script src="${assetPath}/js/user/register.js"></script>


<div class="padding-100 body-sign">
    <div class="container">
        <div class="row">
            <div class="col-sm-5 col-sm-offset-1">
                <p class="v-smash-text-large pull-top">
                    <span>Explain why it's best</span>
                </p>
                <div class="horizontal-break left"></div>

                <ul class="v-list-v2">
                    <li class="v-animation" data-animation="fade-from-right" data-delay="150" style="opacity: 1; right: 0px;"><i class="fa fa-check"></i><span class="v-lead">Simple &amp; with endless possibilties.</span></li>
                    <li class="v-animation" data-animation="fade-from-right" data-delay="300" style="opacity: 1; right: 0px;"><i class="fa fa-check"></i><span class="v-lead">Everything is perfectly orgainized for future.</span></li>
                    <li class="v-animation" data-animation="fade-from-right" data-delay="450" style="opacity: 1; right: 0px;"><i class="fa fa-check"></i><span class="v-lead">Sliders give you the opportunity to showcase.</span></li>
                    <li class="v-animation" data-animation="fade-from-right" data-delay="600" style="opacity: 1; right: 0px;"><i class="fa fa-check"></i><span class="v-lead">Multiple layout for home pages, portfolio &amp; blog.</span></li>
                    <li class="v-animation" data-animation="fade-from-right" data-delay="750" style="opacity: 1; right: 0px;"><i class="fa fa-check"></i><span class="v-lead">The best way to grow your business</span></li>
                    <li class="v-animation" data-animation="fade-from-right" data-delay="900" style="opacity: 1; right: 0px;"><i class="fa fa-check"></i><span class="v-lead">Lorem ipsum dolor sit amet, consectetur.</span></li>
                </ul>
            </div>

            <div class="col-sm-5">
                <form class="signup">
                    
                    <div class="form-group">
                        <label>이메일 <span class="required">*</span></label>
                        <input type="text" id="email" class="form-control" name="email" value=""  placeholder="이메일을 입력하여 주세요." maxlength="100" />
                    </div>
                    
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-6">
                                <label>비밀번호 <span class="required">*</span></label>
                                <input type="password" id="password" class="form-control input-lg" name="pwd"  placeholder="비밀번호를 입력하여 주세요." />
                            </div>
                            <div class="col-sm-6">
                                <label>비밀번호 확인 <span class="required">*</span></label>
                                <input type="password" id="passwordConfirm" class="form-control input-lg" name="pwd_confirm" placeholder="비밀번호를 한번 더 입력하주세요." />
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label>닉네임<span class="required">*</span></label>
                        <input type="text" id="nickName" class="form-control" name="name" value="" placeholder="닉네임을 입력하여 주세요." maxlength="100" />
                    </div>

                    <div class="row">
                        <div class="col-sm-8">
                            <div class="checkbox-custom checkbox-default">
                                <input id="userInfoCheckbox" name="userInfoCheckbox" type="checkbox">
                                <label for="userInfoCheckbox">개인정보 사용 동의하시겠습니까?</label>
                            </div>
                        </div>
                        <div class="col-sm-4 pull-right">
                            <button type="button" id="registerBtn" class="btn v-btn v-btn-default v-small-button no-three-d pull-right no-margin-bottom no-margin-right">회원가입</button>
                        </div>
                    </div>

                    <span class="line-thru text-center text-uppercase pull-bottom-small pull-top-small">
                        <span>or</span>
                    </span>

                    <div class="mb-xs text-center">
                        <a class="btn btn-facebook">Connect with <i class="fa fa-facebook"></i></a>
                        <a class="btn btn-twitter">Connect with <i class="fa fa-twitter"></i></a>
                    </div>

                    <p class="text-center pull-top-small">
                       	 <a href="/user/login">로그인 페이지로 돌아가기</a>
                    </p>
                </form>
            </div>
        </div>
    </div>
</div>