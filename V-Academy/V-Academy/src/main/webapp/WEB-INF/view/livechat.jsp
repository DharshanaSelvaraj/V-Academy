<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LIVE CHAT</title>
<link href="css/chat.css" rel="stylesheet" type="text/css" />
</head>

<style>

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html,
body {
  height: 100;
}

html {
  font-family: Arial, Helvetica, sans-serif;
  background: linear-gradient(to right, #57cleb 0%, #246fa8 100%);
  font-size: 10px;
}

body{
  display: grid;
  place-items: centre;
}


#chat-container {
  display: grid;
  grid:
    'search-container chat-title' 71px
    'conversation-list chat-message-list' 1fr
    'new-message-container' chat-form' 78px
    /275px 1fr;
  min-width: 800px;
  max-width: 1000px;
  max-height: 800px;
  width: 100%;
  height: 95vh;
  background: #FFF;
  border-radius: 10px;
}

#search-container
#conversation-list
#new-message-container{
  background: #0048AA;
}
#search-container{
  display: grid;
  align-items: center;
  padding: 0 20px;
  grid-area: search-container;
  border-radius: 10px 0 0 0;
  box-shadow: 0 1px 3px -1px rgba(0, 0, 0, 0.75);
  z-index: 1; 
}

#search-container input{
  color: #eee;
  outline: none;
  font-weight: bold;
  border-radius: 2px;
  height: 30px;
  border: 0;
  padding-left: 48px;
  padding-right: 20px;
  font-size: 1.4rem;
  background: url() no-repeat rgba(255, 255, 255, 0.3);
  background-position: 15px centre;
  background-size: 20px 20px;

}

#search-container input::placeholder{
  color: #ddd;
  font-weight: bold;
}

conversation-list{
  grid-area: conersation-list;
  overflow-y: scroll;

}

.coversation {
  display: grid;
  grid-template-columns: 40px  1fr max-content;
  grid-gap: 10px;
  color: #ddd;
  font-size: 1.3rem;
  border-bottom: 1px solid #002c88;
  padding: 20px 20px 20px 15px;

}

.coversation.active,
.coversation.hover{
  background: #002c88;
}
.coversation.hover{
  cursor: pointer;

}
.coversation > img {
  grid-row: span 2;
  height: 40px;
  width: 40px;
  border-radius: 100%;
}

.title-text {
  font-weight: bold;
  color: #eee;
  padding-left: 5px;
  white-space: nowrap;
  overflow-x: hidden;
  text-overflow: ellipsis;
}

.created-date {
  color: #ddd;
  font-size: 1rem;

}

.coversation.message {
  grid-column: span 2;
  padding-left: 5px;
  white-space: nowrap;
  overflow-x: hidden;
  text-overflow: ellipsis;

}

#new-message-container{
  display: grid;
  grid: 40px / 40px;
  grid-area: new-message-container;
  border-top: 1px solid rgba(0, 0, 0, 0.25);
  border-radius: 0 0 0 10px;
  padding: 0 15px; 
}

#new-message-container a{
  display: grid;
  place-content: centre centre;
  background: #eee;
  border-radius: 100%;
  color: #002c88;
  text-decoration: none;
  font-size: 3.6rem;
}

#chat-title,
#chat-form{
  background: #eee;
}
#chat-title{
  display: grid;
  grid: 36px / 1fr 36px;
  align-content: center;
  align-items: center;
  grid-area: chat-title;
  color: #0048AA;
  font-weight: bold;
  font-size: 2.0rem;
  border-radius: 0 10px 0 0;
  box-shadow: 0 1px  3px -1px rgba(0, 0, 0, 0.75);
  padding: 0 20px;
}

#chat-title > img{
  cursor: pointer;
}
#chat-message-list{
  grid-area: chat-message-list;
  display: flex;
  flex-direction: column-reverse;
  padding: 20px;

}
.message-row {
  display: grid;
  grid-template-columns: 70%;
  margin-bottom: 20px;
}

.you-message {
  justify-content: end;
  justify-items: end;
}
.other-message {
  justify-content: start;
}
.message-text {
  padding: 9px 14px;
  font-size: 1.6rem;
  margin-bottom: 5px;
}

.message-time {
  font-size: 1.3rem;
  color: #777;
}

.you-message .message-text{
  background: #0048AA;
  color: #eee;
  border: 1px solid #0048AA;
  border-radius: 14px 14px 0 14px;
}

.other-message .message-text{
  background: #eee;
  color: #111;
  border: 1px solid #ddd;
  border-radius: 14px 14px 14px 0;
}
#chat-form{
  display: grid;
  grid: 51px / 32px 1fr;
  grid-area: chat-form;
  align-content: center;
  align-items: center;
  grid-gap: 15px;
  border-radius: 0 0 1px 0;
  border-top: 1px solid rgba(0, 0, 0, 0.25);
  padding-left: 42px;
  padding-right: 22px;


}

#chat-form input{
  outline: none;
  padding: 15px;
  border: 2px solid #ddd;
  color: #330;
  border-radius: 6px;
  font-size: 1.4rem;
}

::-webkit-scrollbar {
  display: none;
}
</style>

  <body>
    <div id="chat-container">
    <div id="search-container">
      <input type="text" placeholder="Search"/>

    </div>
    <div id="conversation-list">
      <div class="conversation active">
        <img src="" alt="Dharshana selvaraj"/>
        <div class="title-text">
          Dharshana Selvaraj
        </div>
        <div class="created-date">
          May 1
        </div>
        <div class="conversation-message">
          This is a message
        </div>
     


    </div>  
    <div id="new-message-container">
      <a href="#">+</a>
    </div> 
    <div id="chat-title">
      <span>Dharshana selvaraj</span>
      <img src="" alt="Delete Conversation"/>

    </div>
    <div id="chat-message-list">
      <div class="message-row you-message">
        <div class="message-text">OK then</div>
        <div class="message-time">May 1</div>
      </div>
      <div class="message-row other-message">
        <div class="message-text">OK then</div>
        <div class="message-time">May 1</div>
      </div>

    </div>  
    <div id="chat-form">
      <img src="" alt="Add Attachment"/>
      <input type="text" placeholder="type a message"/>

    </div> 

    <script src="script.js"></script>
  </body>
</html>

