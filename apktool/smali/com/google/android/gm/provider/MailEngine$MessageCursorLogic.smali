.class Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;
.super Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;
.source "MailEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageCursorLogic"
.end annotation


# instance fields
.field mConfigured:Z

.field final mConversationId:J

.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;J)V
    .locals 1
    .param p2, "conversationId"    # J

    .prologue
    .line 6338
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    .line 6339
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    .line 6336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->mConfigured:Z

    .line 6340
    iput-wide p2, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->mConversationId:J

    .line 6341
    return-void
.end method


# virtual methods
.method public configure(JLcom/google/android/gm/provider/MailEngine$NetworkCursor;Z)V
    .locals 15
    .param p1, "conversationId"    # J
    .param p3, "cursor"    # Lcom/google/android/gm/provider/MailEngine$NetworkCursor;
    .param p4, "useCache"    # Z

    .prologue
    .line 6344
    iget-wide v10, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mQueryId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 6345
    .local v6, "queryIdStr":Ljava/lang/String;
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->mConfigured:Z

    .line 6349
    iget-object v10, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v10, v10, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "SELECT COUNT(*) FROM conversations WHERE _id = ?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    .line 6352
    .local v4, "numConversations":J
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gtz v10, :cond_1

    .line 6353
    const-string v10, "Gmail"

    const-string v11, "Didn\'t find conversation entry for this conversation"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6390
    :cond_0
    :goto_0
    return-void

    .line 6357
    :cond_1
    if-eqz p4, :cond_2

    .line 6358
    iget-object v10, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v10, v10, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "SELECT COUNT(*) FROM messages WHERE conversation = ? AND queryId = ?"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    invoke-static {v10, v11, v12}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 6363
    .local v0, "cacheCount":J
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-gtz v10, :cond_0

    .line 6368
    .end local v0    # "cacheCount":J
    :cond_2
    iget-object v10, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v10, v10, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "SELECT COUNT(*) FROM messages WHERE conversation = ? AND queryId = 0"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v7

    .line 6371
    .local v7, "syncCount":J
    const-wide/16 v10, 0x0

    cmp-long v10, v7, v10

    if-nez v10, :cond_0

    .line 6373
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 6374
    .local v9, "whereSb":Ljava/lang/StringBuilder;
    const-string v10, "queryId NOT IN (0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6375
    iget-object v10, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    # getter for: Lcom/google/android/gm/provider/MailEngine;->mMessageCursorLogicMapLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/google/android/gm/provider/MailEngine;->access$4500(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 6376
    :try_start_0
    iget-object v10, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    # getter for: Lcom/google/android/gm/provider/MailEngine;->mMessageCursorLogicMap:Ljava/util/Map;
    invoke-static {v10}, Lcom/google/android/gm/provider/MailEngine;->access$4600(Lcom/google/android/gm/provider/MailEngine;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 6377
    .local v2, "cid":Ljava/lang/Long;
    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6378
    iget-object v10, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    # getter for: Lcom/google/android/gm/provider/MailEngine;->mMessageCursorLogicMap:Ljava/util/Map;
    invoke-static {v10}, Lcom/google/android/gm/provider/MailEngine;->access$4600(Lcom/google/android/gm/provider/MailEngine;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;

    iget-wide v12, v10, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mQueryId:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6380
    .end local v2    # "cid":Ljava/lang/Long;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6381
    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6382
    iget-object v10, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v10, v10, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "messages"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_4

    .line 6383
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->requery()Z

    .line 6388
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->startThread()Z

    goto/16 :goto_0
.end method

.method public declared-synchronized respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 6394
    monitor-enter p0

    :try_start_0
    const-string v2, "command"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6395
    .local v0, "command":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6396
    .local v1, "response":Landroid/os/Bundle;
    const-string v2, "setVisible"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6397
    const-string v2, "visible"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6398
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    # getter for: Lcom/google/android/gm/provider/MailEngine;->mMessageCursorLogicMapLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->access$4500(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6399
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    # getter for: Lcom/google/android/gm/provider/MailEngine;->mMessageCursorLogicMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->access$4600(Lcom/google/android/gm/provider/MailEngine;)Ljava/util/Map;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->mConversationId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6400
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6402
    :cond_0
    :try_start_2
    const-string v2, "commandResponse"

    const-string v3, "ok"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6407
    .end local v1    # "response":Landroid/os/Bundle;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 6400
    .restart local v1    # "response":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6394
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "response":Landroid/os/Bundle;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 6407
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v1    # "response":Landroid/os/Bundle;
    :cond_1
    :try_start_5
    invoke-super {p0, p1}, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    goto :goto_0
.end method

.method public runInternal()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    const/high16 v13, 0x200000

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 6413
    new-instance v2, Lcom/google/android/gm/provider/MailSync$ConversationInfo;

    iget-wide v6, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->mConversationId:J

    const-wide/16 v8, 0x0

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/google/android/gm/provider/MailSync$ConversationInfo;-><init>(JJ)V

    .line 6416
    .local v2, "info":Lcom/google/android/gm/provider/MailSync$ConversationInfo;
    const-string v6, "Gmail"

    const-string v7, "MessageCursor requesting conversation %d"

    new-array v8, v12, [Ljava/lang/Object;

    iget-wide v9, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->mConversationId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6419
    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->isRunningICSOrLater()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6420
    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    # getter for: Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;
    invoke-static {v6}, Lcom/google/android/gm/provider/MailEngine;->access$800(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v6

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/common/GoogleTrafficStats;->getDomainType(Ljava/lang/String;)I

    move-result v0

    .line 6421
    .local v0, "accountType":I
    const/high16 v4, 0x200000

    .line 6424
    .local v4, "requestType":I
    or-int v6, v0, v4

    invoke-static {v6}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 6428
    .end local v0    # "accountType":I
    .end local v4    # "requestType":I
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v6, v6, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v6, v2}, Lcom/google/android/gm/provider/MailSync;->newFetchConversationRequest(Lcom/google/android/gm/provider/MailSync$ConversationInfo;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    .line 6429
    .local v3, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    # invokes: Lcom/google/android/gm/provider/MailEngine;->runHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    invoke-static {v6, v3}, Lcom/google/android/gm/provider/MailEngine;->access$4200(Lcom/google/android/gm/provider/MailEngine;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 6431
    .local v5, "response":Lorg/apache/http/HttpResponse;
    :try_start_1
    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v6, v6, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    iget-wide v7, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->mQueryId:J

    invoke-virtual {v6, v5, v7, v8}, Lcom/google/android/gm/provider/MailSync;->handleFetchConversationResponse(Lorg/apache/http/HttpResponse;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6433
    :try_start_2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 6434
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 6437
    :cond_1
    const-string v6, "Gmail"

    const-string v7, "All messages received for conversation."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6438
    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v7, 0x0

    # invokes: Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V
    invoke-static {v6, v7}, Lcom/google/android/gm/provider/MailEngine;->access$3500(Lcom/google/android/gm/provider/MailEngine;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6440
    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->isRunningICSOrLater()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6441
    invoke-static {v13, v12}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 6442
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 6445
    :cond_2
    return-void

    .line 6433
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 6434
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 6435
    :cond_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6440
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catchall_1
    move-exception v6

    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->isRunningICSOrLater()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 6441
    invoke-static {v13, v12}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 6442
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    :cond_4
    throw v6
.end method
