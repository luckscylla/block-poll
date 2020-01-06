# Block-Poll
- This is a DAPP for 2020 Taiwan president poll
- The result is recorded on Ethereum block-chain (Rinkeby Testnet)
- The poll is done through line bot

# 區塊鍊民調
現在的民調都是由特定的組織或媒體所作的，而民眾只能透過被動的隨機抽樣來參與，其過程一點也不公開透明，甚至有可能被有心人士所操控。而區塊鏈不可竄改且公開透明的特性剛好可以用來解決這些問題。只要用一個智能合約，就能讓所有人主動地參與表達自己的意見，並及時看到結果。不過其中還是有許多要克服的困難點，例如:

1. 如何讓不熟悉區塊鏈的民眾能夠輕易地參與
2. 如何確保每人只能夠投一票，避免灌票
3. 如何確認參與人有投票權
4. 如何推廣這個計畫讓更多人參與

針對前兩個問題，我這邊提出了一個還不錯的解法，就是利用 line 打造一個聊天機器人，然後這個聊天機器人可以用使用者的 id 產生一組帳號，並發送少許的 ETH 給這個帳號，以便使用者可以發起投票交易。而發起投票交易也是透過機器人執行，對使用者而言，一切的過程都不需要具備有區塊鏈的相關知識背景。而且每個 line id 只能生成一組帳號，所以一個人只能夠投一票。

至於第三個問題目前還沒有想到好的解法，除非有辦法得到使用者的年齡及所在地區。不過至少大陸人不能用 line ，其他使用者最多的國家日本看不懂中文，應該不會來 XD 。
當然也有想過有人可能會有不只一個 line 帳號，但畢竟是少數，影響應該不大。我對 Facebook 的聊天機器人沒有研究，也許他有機會可以更好地解決上述提到的問題也說不定。

而第四個問題，因為發布時間距離大選只剩不到一個禮拜，所以應該沒辦法有機會讓太多人參與，不過我想還是把這個有趣計畫跟大家分享一下，也當做是自己在學習區塊鏈的一個記錄。

######打開 line 搜尋 @832ldgop 或掃描 QR Code 加入好友，即可參與投票
[![](https://qr-official.line.me/sid/L/832ldgop.png)](https://qr-official.line.me/sid/L/832ldgop.png)
