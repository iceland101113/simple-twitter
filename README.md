[![Maintainability](https://api.codeclimate.com/v1/badges/c0609ce113878eab620c/maintainability)](https://codeclimate.com/github/ALPHACamp/simple-twitter-workspace/maintainability)

# 推特論壇網站
![image](https://github.com/iceland101113/simple-twitter/blob/master/twitter.png)  

## 網站內容          
前台            
* 除了註冊和登入頁，使用者一定要登入才能使用網站         
* 使用者能創建帳號、登入、登出    
  + 除了信箱和密碼，使用者在註冊時還能設定自己的名稱    
  + 使用者的名稱不能重覆，若有重覆會跳出錯誤, email亦不能重複    
  + 使用者能編輯自己的名稱、介紹和大頭照, 若使用者還沒有大頭照, 使用carrierwave提供的defualt方法顯示  
* 使用者能瀏覽所有的推播 (tweet)       
* 使用者能在首頁看見跟隨者 (followers) 數量排列前 10 的使用者推薦名單       
* 點擊其他使用者的名稱時，能瀏覽該使用者的個人資料及推播     
* 使用者能新增推播（限制在 140 字裡）     
* 使用者能回覆別人的推播     
  + 管理者可以刪除所有人的回覆, 一般使用者只能刪除自己的回覆     
* 使用者可以追蹤/取消追蹤其他使用者（不能追蹤自己）   
* 使用者能對別人的推播按 Like/Unlike    
  + 若使用者對該tweet沒有按過like, 則顯示為灰色, 若按過則顯示為綠色  
* 任何登入使用者都可以瀏覽特定使用者的以下資料：   
  + Tweets：排序依日期，最新的在前    
  + Following：該使用者的關注清單，排序依照追蹤紀錄成立的時間，愈新的在愈前面        
  + Follower：該使用者的跟隨者清單，排序依照追蹤紀錄成立的時間，愈新的在愈前面    
  + Like：該使用者 like 過的推播清單，排序依 like 紀錄成立的時間，愈新的在愈前面        
  
後台      
* 管理者登入網站後，能夠進入後台頁面      
* 管理者可以瀏覽所有的推播與推播回覆內容      
  + 顯示某筆tweet內容以及所有相關回覆的內容, tweet底下會顯示回覆的數量, 點選會直接跳到底下的回覆      
* 管理者可以刪除使用者的推播          
* 管理者可以瀏覽站內所有的使用者清單       
  + 該清單會列出他們的活躍程度（包括推播數量、關注人數、跟隨者人數、推播被 like 的數量）    
  + 點show會連至該使用者的profile, 如果該使用者就是目前正在使用的管理者, 亦可編輯自己的profile      

## 撰寫方式  
ruby on rails, html, css

特別使用的gem：     
* [Carrierwave](https://github.com/carrierwaveuploader/carrierwave)  
--完成使用者註冊及登入功能   

* [FFaker](https://github.com/ffaker/ffaker/blob/master/REFERENCE.md)   
--用來產生使用者名稱以及推文的標題,內容以及回覆等假資料  

* [jquery-rails](https://github.com/rails/jquery-rails)  
* [bootstrap-sass](https://github.com/twbs/bootstrap-sass)  
--用來撰寫一些前端效果時需要用到,  例如網站的導覽列, 按鈕樣式等

* [kaminari](https://github.com/kaminari/kaminari)  
--用來產生分頁, 一頁產生特定數量的推文清單 

## 部署方式  
已部署至heroku, 網址如下  
https://simple-twitter0209.herokuapp.com/    

帳密:root@example.com/12345678


