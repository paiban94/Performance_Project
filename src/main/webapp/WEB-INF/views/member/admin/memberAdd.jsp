<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>    
    <c:import url="../../base/adminBase.jsp"></c:import>
    <style>
      .f {
        color: red;
      }

      .s {
        color: blue;
      }
    </style>
  </head>
  <body>
    <c:import url="../../base/adminLeft.jsp"></c:import>
    <main class="main-content position-relative max-height-vh-100 h-100 mt-1 border-radius-lg ">
    <section class="container mt-5"> 

      <form action="./memberAdd" method="post" id="frm">
          <div class="mb-3">
          <label for="id" class="form-label">아이디</label>
          <input
            type="text"
            name="id"
            class="form-control"
            id="id"           
            placeholder="6~12 영문,숫자 입력해주세요"            
          />
          <div id="idResult"></div>
        </div>

        <div class="mb-3">
          <label for="pw" class="form-label">비밀번호</label>
          <input
            type="password"
            name="pw"
            class="form-control"
            id="pw"
            placeholder="8~12 영문,숫자 입력해주세요"
          />
          <div id="pwResult"></div>
        </div>

        <div class="mb-3">
          <label for="pw2" class="form-label">비밀번호확인</label>
          <input
            type="password"
            name="pw2"
            class="form-control"
            id="pw2"
            placeholder="8~12 영문,숫자 입력해주세요"
          />
          <div id="pw2Result"></div>
        </div>

        <div class="mb-3">
          <label for="name" class="form-label">이름</label>
          <input
            type="text"
            name="name"
            class="form-control"
            id="name"
            placeholder=""
          />
          <div id="nameResult"></div>
        </div>



        <div class="form-group email-form">
          <label for="email" class="form-label">Email</label>
          <input
            type="text"
            name="email"
            class="form-control"
            id="email"
            placeholder="name@example.com"
          />

          <div id="emailResult"></div>


        <div class="mb-3">
          <label for="phone" class="form-label">휴대폰</label>
          <input
            type="text"
            oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"
            name="phone"
            class="form-control"
            id="phone"
            placeholder="01012341234" 
            maxlength="11"                     
          />
          <div id="phoneResult"></div>
        </div>

        <div class="mb-3">
          <label for="birth" class="form-label">생년월일</label>
          <input
            type="date"
            name="birth"
            class="form-control"
            id="birth"
            placeholder="19970102"
          />
          <div id="birthResult"></div>
        </div>      


        <div class="mb-3">
          <label for="postcode" class="form-label"></label>
          <input
            type="text"
            name="address"
            class="form-control"
            id="postcode"
            placeholder="우편번호"
            readonly
          />
        

          <div class="mb-3">
          <label for="address" class="form-label"></label>
          <input
            type="text"
            name="address"
            class="form-control"
            id="address"
            placeholder="주소"
            readonly
          />
          </div>
 
          <label for="detailAddress" class="form-label"></label>
          <input
            type="text"
            name="address"
            class="form-control"
            id="detailAddress"
            placeholder="상세주소입력"
          />
          <br>
          <div class="mb-3">
            <button class="btn" id="addrSearch" type="button">
              우편번호찾기
            </button>
           </div>
          <div id="addressResult"></div>
        </div>

        <div class="my-3" align="center" >
			<button type="submit" id="addBtn" class="btn">등록</button>
        </div>
      </form>
    </section>   
  </main>
  <script src="/resources/js/member/memberAdd.js"></script>
    <!-- 카카오주소api -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

  </body>
</html>
