<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<script type="text/javascript">

// function init() {
//     wid = $('#barWindow').width();
//     now_num = $('.barTableDot>li.on').index();
//     barTableDiv_length = $barTableDotli.length;
//   }
  
	function boardView() {
		$(".mainView").hide();
		$(".boardView").show();
	}
  
	function mainView() {
		$(".mainView").show();
		$(".boardView").hide();
		
	}
  
</script>

<style>
.mainView {
	text-align: center;
}

.boardView {
	text-align: center;
	display:none;
}
      #jb-container {
        width: 940px;
        margin: 10px auto;
        padding: 20px;
        border: 1px solid #bcbcbc;
      }
      #jb-header {
        padding: 20px;
        margin-bottom: 20px;
        border: 1px solid #bcbcbc;
      }
      #jb-content {
        width: 580px;
        padding: 20px;
        margin-bottom: 20px;
        float: left;
        border: 1px solid #bcbcbc;
      }
      #jb-sidebar {
        width: 260px;
        padding: 20px;
        margin-bottom: 20px;
        float: right;
        border: 1px solid #bcbcbc;
      }
      #jb-footer {
        clear: both;
        padding: 20px;
        border: 1px solid #bcbcbc;
      }
      @media ( max-width: 480px ) {
        #jb-container {
          width: auto;
        }
        #jb-content {
          float: none;
          width: auto;
        }
        #jb-sidebar {
          float: none;
          width: auto;
        }
      }
    </style>

<div class="mainView">
	<h1>게시판 시작!</h1>
	<button class="openBoard" onclick="boardView();">게시판</button>
</div>

<div class="boardView">
	<h1>게시판!</h1>
	<button class="returnMain" onclick="mainView();">메인</button>
	
	<table>
		<tr>
		<th>번호</th>
		<th>제목</th>
		<th>글쓴이</th>
		</tr>
		
		<tr>
		<td>1</td>
		<td>테스트</td>
		<td>박재우</td>
		</tr>
		
	</table>
	
	<div id="jb-container">
      <div id="jb-header">
        <h1>Responsive Layout</h1>
      </div>
      <div id="jb-content">
        <h2>Content</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mollis nulla. Phasellus lacinia tempus mauris eu laoreet. Proin gravida velit dictum dui consequat malesuada. Aenean et nibh eu purus scelerisque aliquet nec non justo. Aliquam vitae aliquet ipsum. Etiam condimentum varius purus ut ultricies. Mauris id odio pretium, sollicitudin sapien eget, adipiscing risus.</p>
      </div>
      <div id="jb-sidebar">
        <h2>Sidebar</h2>
        <ul>
          <li>Lorem</li>
          <li>Ipsum</li>
          <li>Dolor</li>
        </ul>
      </div>
      <div id="jb-footer">
        <p>Copyright</p>
      </div>
    </div>
</div>
