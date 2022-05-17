<template>
	<view class="content">
		<view class="interval">初始化/登陆/退出</view>
		<button type="default" size="mini" @click="fileInfo()">init</button>
		<button type="default" size="mini" @click="login()">login</button>
		<button type="default" size="mini" @click="logout()">logout</button>
		<view class="interval">用户</view>
		<button type="default" size="mini" @click="getLoginUser()">getLoginUser</button>
		<button type="default" size="mini" @click="getUsersInfo()">getUerInfo</button>
		<button type="default" size="mini" @click="setSelfInfo()">setSelfInfo</button>
		<button type="default" size="mini" @click="getSelfUserInfo()">getSelfUserInfo</button>
		<view class="interval">好友及黑名单</view>
		<button type="default" size="mini" @click="getDesignatedFriendsInfo()">getDesignatedFriendsInfo</button>
		<button type="default" size="mini" @click="getFriendList()">getFriendList</button>
		<button type="default" size="mini" @click="checkFriend()">checkFriend</button>
		<button type="default" size="mini" @click="addFriend()">addFriend</button>
		<button type="default" size="mini" @click="setFriendRemark()">setFriendRemark</button>
		<button type="default" size="mini" @click="deleteFriend()">deleteFriend</button>
		<button type="default" size="mini" @click="getRecvFriendApplicationList()">getRecvFriendApplicationList</button>
		<button type="default" size="mini" @click="getSendFriendApplicationList()">getSendFriendApplicationList</button>
		<button type="default" size="mini" @click="acceptFriendApplication()">acceptFriendApplication</button>
		<button type="default" size="mini" @click="refuseFriendApplication()">refuseFriendApplication</button>
		<button type="default" size="mini" @click="addBlack()">addBlack</button>
		<button type="default" size="mini" @click="addFriend()">addFriend</button>
		<button type="default" size="mini" @click="getBlackList()">getBlackList</button>
		<button type="default" size="mini" @click="removeBlack()">removeBlack</button>
		<view class="interval">群聊</view>
		<button type="default" size="mini" @click="createGroup()">createGroup</button>
		<button type="default" size="mini" @click="joinGroup()">joinGroup</button>
		<button type="default" size="mini" @click="quitGroup()">quitGroup</button>
		<button type="default" size="mini" @click="getJoinedGroupList()">getJoinedGroupList</button>
		<button type="default" size="mini" @click="getGroupsInfo()">getGroupsInfo</button>
		<button type="default" size="mini" @click="setGroupInfo()">setGroupInfo</button>
		<button type="default" size="mini" @click="getGroupMemberList()">getGroupMemberList</button>
		<button type="default" size="mini" @click="getGroupMembersInfo()">getGroupMembersInfo</button>
		<button type="default" size="mini" @click="kickGroupMember()">kickGroupMember</button>
		<button type="default" size="mini" @click="transferGroupOwner()">transferGroupOwner</button>
		<button type="default" size="mini" @click="inviteUserToGroup()">inviteUserToGroup</button>
		<button type="default" size="mini" @click="getRecvGroupApplicationList()">getRecvGroupApplicationList</button>
		<button type="default" size="mini" @click="acceptGroupApplication()">acceptGroupApplication</button>
		<button type="default" size="mini" @click="refuseGroupApplication()">refuseGroupApplication</button>
		<view class="interval">会话</view>
		<button type="default" size="mini" @click="getAllConversationList()">getAllConversationList</button>
		<button type="default" size="mini" @click="getConversationListSplit()">getConversationListSplit</button>
		<button type="default" size="mini" @click="getOneConversation()">getOneConversation</button>
		<button type="default" size="mini" @click="getConversationIDBySessionType()">getConversationIDBySessionType</button>
		<button type="default" size="mini" @click="getMultipleConversation()">getMultipleConversation</button>
		<button type="default" size="mini" @click="deleteConversation()">deleteConversation</button>
		<button type="default" size="mini" @click="setConversationDraft()">setConversationDraft</button>
		<button type="default" size="mini" @click="pinConversation()">pinConversation</button>
		<button type="default" size="mini" @click="getTotalUnreadMsgCount()">getTotalUnreadMsgCount</button>
		<button type="default" size="mini" @click="createTextMessage()">createTextMessage</button>
		<button type="default" size="mini" @click="createCardMessage()">createCardMessage</button>
		<button type="default" size="mini" @click="sendMessage()">sendMessage</button>
		<button type="default" size="mini" @click="createImageMsg()">createImageMsg</button>
		<button type="default" size="mini" @click="createImageMessageByURL()">createImageMessageByURL</button>
		<button type="default" size="mini" @click="sendMessageNotOss()">sendMessageNotOss</button>
		<button type="default" size="mini" @click="getHistoryMessageList()">getHistoryMessageList</button>
		<button type="default" size="mini" @click="revokeMessage()">revokeMessage</button>
		<button type="default" size="mini" @click="typingStatusUpdate()">typingStatusUpdate</button>
		<button type="default" size="mini" @click="markC2CMessageAsRead()">markC2CMessageAsRead</button>
		<button type="default" size="mini" @click="deleteMessageFromLocalStorage()">deleteMessageFromLocalStorage</button>
		<button type="default" size="mini" @click="clearC2CHistoryMessage()">clearC2CHistoryMessage</button>
		<button type="default" size="mini" @click="clearGroupHistoryMessage()">clearGroupHistoryMessage</button>
		<button type="default" size="mini" @click="insertSingleMessageToLocalStorage()">insertSingleMessageToLocalStorage</button>
		<button type="default" size="mini" @click="insertGroupMessageToLocalStorage()">insertGroupMessageToLocalStorage</button>
		<button type="default" size="mini" @click="searchLocalMessages()">searchLocalMessages</button>
	</view>
</template>

<script>
	const im = uni.requireNativePlugin('Tuoyun-OpenIMSDK')
	const event = uni.requireNativePlugin('globalEvent')
	export default {
		data() {
			return {
				title: 'Hello',
				token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVSUQiOiIxODM4MTQxNTE2NSIsIlBsYXRmb3JtIjoiQW5kcm9pZCIsImV4cCI6MTk2NjEzMjU0NiwibmJmIjoxNjUwNzcyNTQ2LCJpYXQiOjE2NTA3NzI1NDZ9.Al3BtDSgJHYLNOfHfyikvUp8ZtAkXA1tXuFbsNtYPa4',
				usermessages: [],
				createmessage: [],
				createpic: ''
			}
		},
		methods: {
			// 初始化
			init(path) {
				const config = {
					platform: 2,
					api_addr: "http://43.128.5.63:10002",
					ws_addr: "ws://43.128.5.63:10001",
					data_dir: path,
					log_level: 6,
					object_storage: "cos"
				}
				const operationID = '444' // 随机生成
				const flag = im.initSDK(operationID,config)
				this.setListener()
				this.addListener()
				this.res(flag)
				console.log(flag)
			},
			// 设置监听
			setListener(){
				im.setUserListener()
				im.setConversationListener()
				im.setAdvancedMsgListener()
				im.setFriendListener()
				im.setGroupListener()
				// ...
			},
			addListener(){
				// connect status
				event.addEventListener("onConnectSuccess",(data)=>{
					console.log(data);
					uni.showToast({
						title: 'onConnectSuccess!!!!',
						duration: 1500,
					})
				})
				event.addEventListener("onConnectFailed",(data)=>{
					console.log(data);
				})
				// sendMessage callback
				event.addEventListener("sendMessageSuccess",data=>{
					console.log("sendMessageSuccess");
					console.log(data);
				})
				event.addEventListener("sendMessageFailed",data=>{
					console.log("sendMessageFailed");
					console.log(data);
				})
				event.addEventListener("sendMessageProgress",data=>{
					console.log("sendMessageProgress");
					console.log(data);
				})
				// message listener
				event.addEventListener("onRecvNewMessage",data=>{
					console.log(data);
				})
				event.addEventListener("onRecvMessageRevoked",data=>{
					console.log(data);
				})
				event.addEventListener("onRecvC2CReadReceipt",data=>{
					console.log(data);
				})
				event.addEventListener("onRecvGroupReadReceipt",data=>{
					console.log(data);
				})
			},
			// 登陆
			login() {
				const operationID = '444' // 随机生成
				const userID = '18381415165'
				im.login(operationID,userID,this.token,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 退出
			logout() {
				const operationID = '444' // 随机生成
				im.logout(operationID,data => {
					this.res(data)
					console.log(data)
				})
			},
			getLoginUser() {
				const data = im.getLoginUser()
				console.log(data)
			},
			// 创建图片
			createImageMsg(){
				uni.chooseImage({
				    count: 6, //默认9
				    sizeType: ['original', 'compressed'], //可以指定是原图还是压缩图，默认二者都有
				    sourceType: ['album'], //从相册选择
				    success: (res) => {
				        console.log(res.tempFilePaths[0].replace('file://',''));
								this.createpic = plus.io.convertLocalFileSystemURL(res.tempFilePaths[0])
								// const msg = im.createImageMessageFromFullPath()
				    }
				});
			},
			// 获取某些用户的公开资料
			getUsersInfo() {
				const operationID = '444' // 随机生成
				const userIDList = ['18381415165','17726378428']
				im.getUsersInfo(operationID,userIDList,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 设置登录用户的相关资料
			setSelfInfo() {
				const operationID = '444' // 随机生成
				const userInfo = {
					"userID":"18381415165",
					"nickname":"mm",
					"faceURL":"127.0.0.1/xx",
					"gender":1,
					"phoneNumber":"",
					"birth":222222,
					"email":"",
					"createTime":222222,
					"ex":""
				}
				im.setSelfInfo(operationID,userInfo,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 设置登录用户相关资料
			getSelfUserInfo() {
				const operationID = '444' // 随机生成
				im.getSelfUserInfo(operationID,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 获取指定好友信息
			getDesignatedFriendsInfo() {
				const operationID = '444' // 随机生成
				const userIDList = ['17726378428']
				im.getDesignatedFriendsInfo(operationID,userIDList,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 获取所有好友的相关信息
			getFriendList() {
				const operationID = '444' // 随机生成
				im.getFriendList(operationID,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 检查是否好友关系，即是否在登录用户的好友列表中。注意：好友是双向关系
			checkFriend() {
				const operationID = '444' // 随机生成
				const userIDList = ['17726378428']
				im.checkFriend(operationID,userIDList,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 添加好友申请
			addFriend() {
				const operationID = '444' // 随机生成
				const userIDReqMsg = {
					"toUserID":"18388888888",
					"reqMsg":"hello"
				}
				im.addFriend(operationID,userIDReqMsg,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 设置好友备注
			setFriendRemark() {
				const operationID = '444' // 随机生成
				const userIDRemark = {
					"toUserID":"17726378428",
					"remark":"lo"
				}
				im.setFriendRemark(operationID,userIDRemark,data => {
					this.res(data)
					console.log((data))
				})
			},
			// 删除好友，好友是双向关系，此函数仅仅删除自己的好友
			deleteFriend() {
				const operationID = '444' // 随机生成
				const friendUserID = '11147844'
				im.deleteFriend(operationID,friendUserID,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 获取收到的好友申请，即哪些人申请加我为好友
			getRecvFriendApplicationList() {
				const operationID = '444' // 随机生成
				im.getRecvFriendApplicationList(operationID,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 获取我发出去的好友申请，即我主动申请添加哪些人为好友
			getSendFriendApplicationList() {
				const operationID = '444' // 随机生成
				im.getSendFriendApplicationList(operationID,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 同意某人的好友申请
			acceptFriendApplication() {
				const operationID = '444' // 随机生成
				const userIDHandleMsg = {
					"toUserID": "17726378428",
					"handleMsg": "ok"
				}
				im.acceptFriendApplication(operationID,userIDHandleMsg,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 拒绝某人的好友申请
			refuseFriendApplication() {
				const operationID = '444' // 随机生成
				const userIDHandleMsg = {
					"toUserID": "user001",
					"handleMsg": "ok"
				}
				im.refuseFriendApplication(operationID,userIDHandleMsg,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 添加黑名单
			addBlack() {
				const operationID = '444' // 随机生成
				const blackUserID = '17726378428'
				im.addBlack(operationID,blackUserID,(data)=>{
					this.res(data)
					console.log(data)
				})
			},
			// 获取黑名单资料列表
			getBlackList() {
				const operationID = '444' // 随机生成
				im.getBlackList(operationID,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 移除黑名单
			removeBlack() {
				const operationID = '444' // 随机生成
				const removeUserID = '17726378428'
				im.removeBlack(operationID,removeUserID,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 创建群聊
			createGroup() {
				const operationID = '444' // 随机生成
				const groupBaseInfo = {
					"groupName": "test 888",
					"groupType": 0,
					"notification": "",
					"introduction":"",
					"faceURL":"",
					"ex":"",
				}
				const memberList = []
				im.createGroup(operationID,groupBaseInfo,memberList,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 申请加入某群
			joinGroup() {
				const operationID = '444' // 随机生成
				const groupID = '39cf8f3a4a6a7b98c84b08bf6de87592'
				// const groupID = 'c5f8bc79e1c67981c6e4aba5d2e88bd4'
				const reqMsg = 'sdf'
				im.joinGroup(operationID,groupID,reqMsg,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 退出某群
			quitGroup() {
				const operationID = '444' // 随机生成
				const groupID = '8795f6aaad7d9bd62f6ac774e6051ed8'
				im.quitGroup(operationID,groupID,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 获取已加入的群列表
			getJoinedGroupList() {
				const operationID = '444' // 随机生成
				im.getJoinedGroupList(operationID,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 获取指定群信息
			getGroupsInfo() {
				const operationID = '444' // 随机生成
				const groupIDList = ['492a7b26806a963a8900f77b04e653bb']
				im.getGroupsInfo(operationID,groupIDList,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 设置群信息（群名称，群通知，群公告，群头像，以及扩展字段），管理员和群主可以操作
			setGroupInfo() {
				const operationID = '444' // 随机生成
				const groupID = '492a7b26806a963a8900f77b04e653bb'
				const groupInfo = {
					"groupName": "test 777",
					"notification": "",
					"introduction": "",
					"faceURL": "",
					"ex": ""
				}
				im.setGroupInfo(operationID,groupID,groupInfo,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 获取群成员列表
			getGroupMemberList() {
				const operationID = '444' // 随机生成
				const groupID = '518b4fd71d299ae7aedec2347bc2576a'
				const filter = 0
				const offset = 0
				const count = 10
				im.getGroupMemberList(operationID,groupID,filter,offset,count,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 获取指定群成员列表
			getGroupMembersInfo() {
				const operationID = '444' // 随机生成
				const groupID = '518b4fd71d299ae7aedec2347bc2576a'
				const userIDList = ['16612341234']
				im.getGroupMembersInfo(operationID,groupID,userIDList,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 把某人踢出群
			kickGroupMember() {
				const operationID = '444' // 随机生成
				const groupID = '518b4fd71d299ae7aedec2347bc2576a'
				const reason = ''
				const userIDList = ['13900000000']
				im.kickGroupMember(operationID,groupID,reason,userIDList,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 转让群主，只有群主能操作
			transferGroupOwner() {
				const operationID = '444' // 随机生成
				const groupID = '492a7b26806a963a8900f77b04e653bb'
				const newOwnerUserID = '17726378428'
				im.transferGroupOwner(operationID,groupID,newOwnerUserID,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 邀请某些人进群，群里所有成员可以操作
			inviteUserToGroup() {
				const operationID = '444' // 随机生成
				const groupID = '518b4fd71d299ae7aedec2347bc2576a'
				const reason = ''
				const userIDList = ['13900000000']
				im.inviteUserToGroup(operationID,groupID,reason,userIDList,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 作为群主或者管理员，获取收到的群成员申请进群列表
			getRecvGroupApplicationList() {
				const operationID = '444' // 随机生成
				im.getRecvGroupApplicationList(operationID,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 管理员或者群主同意某人进入某群
			acceptGroupApplication() {
				const operationID = '444' // 随机生成
				const groupID = 'c5f8bc79e1c67981c6e4aba5d2e88bd4'
				const fromUserID = '18388888888'
				const handleMsg = 'jj'
				im.acceptGroupApplication(operationID,groupID,fromUserID,handleMsg,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 管理员或者群主拒绝某人进入某群
			refuseGroupApplication() {
				const operationID = '444' // 随机生成
				const groupID = '959e824f59c0120e33bf4f039ba8f8c7'
				const fromUserID = '17726378428'
				const handleMsg = ''
				im.refuseGroupApplication(operationID,groupID,fromUserID,handleMsg,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 获取会话列表
			getAllConversationList() {
				const operationID = '444' // 随机生成
				im.getAllConversationList(operationID,data => {
					this.res(data)
					console.log(JSON.parse(data.data))
				})
			},
			// 分页获取会话列表
			getConversationListSplit() {
				const operationID = '444' // 随机生成
				const offset = 0
				const count = 5
				im.getConversationListSplit(operationID,offset,count,data => {
					this.res(data)
					console.log(JSON.parse(data.data))
				})
			},
			// 获取一个会话，如果不存在会自动创建
			getOneConversation() {
				const operationID = '444' // 随机生成
				const sessionType = 1 // 单聊为1，群聊为2
				const sourceID = '17726378428'
				// const sourceID = '0140855a6553a96612debbe228e279c3'
				im.getOneConversation(operationID,sourceID,sessionType,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 获取会话ID
			getConversationIDBySessionType() {
				const operationID = '444' // 随机生成
				const sessionType = 1 // 单聊为1，群聊为2
				const val = im.getConversationIDBySessionType(operationID,sessionType)
				console.log(val)
			},
			// 获取多个会话列表
			getMultipleConversation() {
				const operationID = '444' // 随机生成
				const conversationIDList = ['single_17726378428']
				im.getMultipleConversation(operationID,conversationIDList,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 删除一个会话
			deleteConversation() {
				const operationID = '444' // 随机生成
				const conversationID = 'single_17726378428'
				im.deleteConversation(operationID,conversationID,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 设置会话的草稿
			setConversationDraft() {
				const operationID = '444' // 随机生成
				const conversationID = 'single_17726378428'
				const draftText = 'fgsdfg'
				im.setConversationDraft(operationID,conversationID,draftText,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 置顶会话
			pinConversation() {
				const operationID = '444' // 随机生成
				const conversationID = 'single_17726378428'
				const isPinned = false //为true时，代表置顶会话，为false时代表取消置顶
				im.pinConversation(operationID,conversationID,isPinned,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 获取总的消息未读数
			getTotalUnreadMsgCount() {
				const operationID = '444' // 随机生成
				im.getTotalUnreadMsgCount(operationID,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 创建消息
			createTextMessage() {
				const operationID = '444' // 随机生成
				const textMsg = 'asdfghjkl'
				const meg = im.createTextMessage(operationID,textMsg)
				this.createmessage = meg
				console.log(JSON.parse(meg))
			},
			createCardMessage(){
				const data = {
					title:"cardMessage",
					content:"cardContent"
				}
				const meg = im.createCardMessage("opid",JSON.stringify(data))
				this.createmessage = meg
				console.log("createCardMessage:::");
				console.log(JSON.parse(meg))
			},
			// 图片绝对路径
			createImageMessageByURL() {
				const operationID = '444' // 随机生成
				const imagePath = this.createpic
				console.log(imagePath)
				// const pic = im.createImageMessageFromFullPath(operationID,imagePath)
				const sourcePicture = {
				        uuid: "uuid",
				        type: "png",
				        size: 1024,
				        width:1024,
				        height:1024,
				        url:"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.jj20.com%2Fup%2Fallimg%2F1115%2F0ZR1095111%2F210ZP95111-7-1200.jpg&refer=http%3A%2F%2Fimg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653444266&t=b8ae0104bcc4086c8cdb722f843a42e3",
				      };
				const pic = im.createImageMessageByURL(operationID,sourcePicture,sourcePicture,sourcePicture)
				this.createmessage = pic
				console.log(pic)
			},
			
			// 发送消息
			sendMessage() {
				const operationID = '444' // 随机生成
				const message = this.createmessage
				const recvID = '18388888888'
				const groupID = ''
				const offlinePushInfo = {
					title: "你有一条新消息",
					desc: "",
					ex: "",
					iOSPushSound: "+1",
					iOSBadgeCount: true,
				}
				
				im.sendMessage(operationID,message,recvID,groupID,offlinePushInfo)
			},
			// 发送消息不通过sdk内置OSS上传多媒体文件
			sendMessageNotOss() {
				const operationID = '444' // 随机生成
				const message = this.createmessage
				const recvID = '18388888888'
				const groupID = ''
				const offlinePushInfo = {
					title: "你有一条新消息",
					desc: "",
					ex: "",
					iOSPushSound: "+1",
					iOSBadgeCount: true,
				}
				im.sendMessageNotOss(operationID,message,recvID,groupID,offlinePushInfo)
			},
			// 获取历史记录
			getHistoryMessageList() {
				const operationID = '444' // 随机生成
				const getMessageOptions = {
						"userID": "18388888888", //拉取单个用户之间的聊天消息
						"groupID": "", //拉取群的聊天消息
						"startClientMsgID": "",// 起始的消息clientMsgID，第一次拉取为""
						"count": 3//拉取消息的数量
				}
				im.getHistoryMessageList(operationID,getMessageOptions,data => {
					this.res(data)
					console.log(JSON.parse(data.data))
					this.usermessages = JSON.parse(data.data)
				})
			},
			// 撤回一条消息
			revokeMessage() {
				const operationID = '444' // 随机生成
				const message = JSON.stringify(this.usermessages[0])
				im.revokeMessage(operationID,message,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 单聊正在输入消息
			typingStatusUpdate() {
				const operationID = '444' // 随机生成
				const recvID = '18381415165'
				const msgTip = ""
				im.typingStatusUpdate(operationID,recvID,msgTip,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 标记单聊消息已读
			markC2CMessageAsRead() {
				const operationID = '444' // 随机生成
				const userID = '18381415165'
				const msgIDList = []
				im.markC2CMessageAsRead(operationID,userID,msgIDList,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 本地删除一条消息，卸载APP后会重新获取到
			deleteMessageFromLocalStorage() {
				const operationID = '444' // 随机生成
				const message = JSON.stringify(this.usermessages[0])
				im.deleteMessageFromLocalStorage(operationID,message,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 清空单聊的历史记录
			clearC2CHistoryMessage() {
				const operationID = '444' // 随机生成
				const userID = '18388888888'
				im.clearC2CHistoryMessage(operationID,userID,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 本地删除一条消息，卸载APP后会重新获取到
			clearGroupHistoryMessage() {
				const operationID = '444' // 随机生成
				const groupID = '8795f6aaad7d9bd62f6ac774e6051ed8'
				im.clearGroupHistoryMessage(operationID,groupID,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 插入一条单聊消息到本地
			insertSingleMessageToLocalStorage() {
				const operationID = '444' // 随机生成
				const message = this.createmessage
				const recvID = '18381415165'
				const sendID = '18388888888'
				im.insertSingleMessageToLocalStorage(operationID,message,recvID,sendID,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 插入一条群聊消息到本地
			insertGroupMessageToLocalStorage() {
				const operationID = '444' // 随机生成
				const message = this.createmessage
				const groupID = '45f28de54d83b94dd8f22674c4f7310d'
				const sendID = '17726378428'
				im.insertGroupMessageToLocalStorage(operationID,message,groupID,sendID,data => {
					this.res(data)
					console.log(data)
				})
			},
			// 搜索本地消息
			searchLocalMessages() {
				const operationID = '444' // 随机生成
				const searchParam = {
					"sourceID": "18090680773", //源ID,单聊为用户ID，群聊为群ID
					"sessionType": 1,  //会话类型，单聊为1，群聊为2，如果为0，则代表搜索全部
					"keywordList": [
							"78"    //搜索关键词列表，目前仅支持一个关键词搜索
					], 
					"keywordListMatchType": 0,  //关键词匹配模式，1代表与，2代表或，暂时未用
					"senderUserIDList": [],  //指定消息发送的uid列表，暂时未用
					"messageTypeList": [],  //消息类型列表，暂时未用
					"searchTimePosition": 0,  //搜索的起始时间点。默认为0即代表从现在开始搜索。UTC 时间戳，单位：秒
					"searchTimePeriod": 864000,  //从起始时间点开始的过去时间范围，单位秒。默认为0即代表不限制时间范围，传24x60x60代表过去一天。
					"pageIndex": 0,  //分页使用的偏移，暂时未用
					"count": 0 //每页数量，暂时未用
			}
				im.searchLocalMessages(operationID,searchParam,data => {
					this.res(data)
					console.log(data)
				})
			},
			
			fileInfo() {
				let _this = this;
				plus.io.requestFileSystem(plus.io.PRIVATE_DOC, function(fs) {
					fs.root.getDirectory(
						"user", {
							create: true,
						},
						(entry) => {
							_this.init(entry.fullPath);
						},
						(error) => {
							console.log(error);
						}
					);
				});
			},
			// 结果
			res(res) {
				if (res === true || res.errCode === 0) {
					uni.showToast({
						title: '成功',
						duration: 1500,
					})
				} else {
					uni.showToast({
						title: '失败',
						duration: 1500,
						icon: 'error'
					})
				}
				
			}
		}
	}
</script>

<style>
	.content {
		display: flex;
		/* flex-direction: column; */
		flex-wrap: wrap;
		align-items: center;
		justify-content: center;
	}

	.content button {
		min-width: 100px;
	}
	.content .interval {
		width: 100%;
		height: 20px;
		font-size: 11px;
		line-height: 20px;
		text-align: center;
		background-color: skyblue;
		margin-top: 10px;
	}
	.content .interval:nth-child(1) {
		margin: 0;
	}

	/* .logo {
		height: 200rpx;
		width: 200rpx;
		margin-top: 200rpx;
		margin-left: auto;
		margin-right: auto;
		margin-bottom: 50rpx;
	}

	.text-area {
		display: flex;
		justify-content: center;
	}

	.title {
		font-size: 36rpx;
		color: #8f8f94;
	} */
</style>
