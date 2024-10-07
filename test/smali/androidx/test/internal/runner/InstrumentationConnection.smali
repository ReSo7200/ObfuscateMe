.class public Landroidx/test/internal/runner/InstrumentationConnection;
.super Ljava/lang/Object;
.source "InstrumentationConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;,
        Landroidx/test/internal/runner/InstrumentationConnection$MessengerReceiver;
    }
.end annotation


# static fields
.field public static final BROADCAST_FILTER:Ljava/lang/String; = "androidx.test.runner.InstrumentationConnection.event"

.field static final BUNDLE_BR_NEW_BINDER:Ljava/lang/String; = "new_instrumentation_binder"

.field private static final BUNDLE_KEY_CLIENTS:Ljava/lang/String; = "instr_clients"

.field private static final BUNDLE_KEY_CLIENT_MESSENGER:Ljava/lang/String; = "instr_client_msgr"

.field private static final BUNDLE_KEY_CLIENT_TYPE:Ljava/lang/String; = "instr_client_type"

.field private static final BUNDLE_KEY_UUID:Ljava/lang/String; = "instr_uuid"

.field private static final DEFAULT_INSTANCE:Landroidx/test/internal/runner/InstrumentationConnection;

.field static final MSG_ADD_CLIENTS_IN_BUNDLE:I = 0x6

.field static final MSG_ADD_INSTRUMENTATION:I = 0x4

.field private static final MSG_HANDLE_INSTRUMENTATION_FROM_BROADCAST:I = 0x3

.field private static final MSG_PERFORM_CLEANUP:I = 0xb

.field private static final MSG_PERFORM_CLEANUP_FINISHED:I = 0xc

.field private static final MSG_REG_CLIENT:I = 0x8

.field private static final MSG_REMOTE_ADD_CLIENT:I = 0x0

.field static final MSG_REMOTE_CLEANUP_REQUEST:I = 0xa

.field private static final MSG_REMOTE_REMOVE_CLIENT:I = 0x1

.field private static final MSG_REMOVE_CLIENTS_IN_BUNDLE:I = 0x7

.field private static final MSG_REMOVE_INSTRUMENTATION:I = 0x5

.field private static final MSG_TERMINATE:I = 0x2

.field private static final MSG_UN_REG_CLIENT:I = 0x9

.field private static final TAG:Ljava/lang/String; = "InstrConnection"

.field private static activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

.field private static instrumentation:Landroid/app/Instrumentation;


# instance fields
.field incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

.field final messengerReceiver:Landroid/content/BroadcastReceiver;

.field private targetContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    new-instance v0, Landroidx/test/internal/runner/InstrumentationConnection;

    .line 82
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/test/internal/runner/InstrumentationConnection;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroidx/test/internal/runner/InstrumentationConnection;->DEFAULT_INSTANCE:Landroidx/test/internal/runner/InstrumentationConnection;

    .line 80
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Landroidx/test/internal/runner/InstrumentationConnection$MessengerReceiver;

    invoke-direct {v0, p0}, Landroidx/test/internal/runner/InstrumentationConnection$MessengerReceiver;-><init>(Landroidx/test/internal/runner/InstrumentationConnection;)V

    iput-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->messengerReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    const-string v0, "Context can\'t be null"

    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->targetContext:Landroid/content/Context;

    .line 125
    return-void
.end method

.method static synthetic access$500()Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;
    .locals 1

    .line 77
    sget-object v0, Landroidx/test/internal/runner/InstrumentationConnection;->activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    return-object v0
.end method

.method static synthetic access$502(Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;)Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;
    .locals 0
    .param p0, "x0"    # Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    .line 77
    sput-object p0, Landroidx/test/internal/runner/InstrumentationConnection;->activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    return-object p0
.end method

.method static synthetic access$600()Landroid/app/Instrumentation;
    .locals 1

    .line 77
    sget-object v0, Landroidx/test/internal/runner/InstrumentationConnection;->instrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method static synthetic access$602(Landroid/app/Instrumentation;)Landroid/app/Instrumentation;
    .locals 0
    .param p0, "x0"    # Landroid/app/Instrumentation;

    .line 77
    sput-object p0, Landroidx/test/internal/runner/InstrumentationConnection;->instrumentation:Landroid/app/Instrumentation;

    return-object p0
.end method

.method public static getInstance()Landroidx/test/internal/runner/InstrumentationConnection;
    .locals 1

    .line 133
    sget-object v0, Landroidx/test/internal/runner/InstrumentationConnection;->DEFAULT_INSTANCE:Landroidx/test/internal/runner/InstrumentationConnection;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getClientsForType(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    invoke-static {v0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->access$400(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 257
    .end local p0    # "this":Landroidx/test/internal/runner/InstrumentationConnection;
    .end local p1    # "type":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized init(Landroid/app/Instrumentation;Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;)V
    .locals 7
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;
    .param p2, "finisher"    # Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instrumentation",
            "finisher"
        }
    .end annotation

    monitor-enter p0

    .line 154
    :try_start_0
    const-string v0, "InstrConnection"

    const-string v1, "init"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    if-nez v0, :cond_0

    .line 157
    sput-object p1, Landroidx/test/internal/runner/InstrumentationConnection;->instrumentation:Landroid/app/Instrumentation;

    .line 158
    sput-object p2, Landroidx/test/internal/runner/InstrumentationConnection;->activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    .line 159
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InstrumentationConnectionThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 161
    new-instance v1, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 164
    new-instance v1, Landroid/content/Intent;

    const-string v2, "androidx.test.runner.InstrumentationConnection.event"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "new_instrumentation_binder"

    new-instance v4, Landroidx/test/internal/util/ParcelableIBinder;

    iget-object v5, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    iget-object v5, v5, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->messengerHandler:Landroid/os/Messenger;

    .line 168
    invoke-virtual {v5}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/test/internal/util/ParcelableIBinder;-><init>(Landroid/os/IBinder;)V

    .line 166
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 169
    const-string v3, "new_instrumentation_binder"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :try_start_1
    iget-object v3, p0, Landroidx/test/internal/runner/InstrumentationConnection;->targetContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
    iget-object v3, p0, Landroidx/test/internal/runner/InstrumentationConnection;->targetContext:Landroid/content/Context;

    iget-object v4, p0, Landroidx/test/internal/runner/InstrumentationConnection;->messengerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "androidx.test.runner.InstrumentationConnection.event"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    goto :goto_0

    .line 174
    .end local p0    # "this":Landroidx/test/internal/runner/InstrumentationConnection;
    :catch_0
    move-exception v3

    .line 175
    .local v3, "isolatedProcess":Ljava/lang/SecurityException;
    :try_start_2
    const-string v4, "InstrConnection"

    const-string v5, "Could not send broadcast or register receiver (isolatedProcess?)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    .end local v0    # "ht":Landroid/os/HandlerThread;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "isolatedProcess":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 153
    .end local p1    # "instrumentation":Landroid/app/Instrumentation;
    .end local p2    # "finisher":Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized registerClient(Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "messenger"
        }
    .end annotation

    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Instrumentation Connection in not yet initialized"

    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 240
    const-string v0, "InstrConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register client of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "instr_client_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "instr_client_msgr"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 244
    iget-object v1, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 245
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 246
    iget-object v2, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    invoke-virtual {v2, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 238
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    .end local p0    # "this":Landroidx/test/internal/runner/InstrumentationConnection;
    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "messenger":Landroid/os/Messenger;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized requestRemoteInstancesActivityCleanup()V
    .locals 8

    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Instrumentation Connection in not yet initialized"

    invoke-static {v0, v2}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 209
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 210
    .local v0, "uuid":Ljava/util/UUID;
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v1, v2

    .line 211
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    invoke-static {v2, v0, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->access$200(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/UUID;Ljava/util/concurrent/CountDownLatch;)V

    .line 213
    iget-object v2, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 214
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    iget-object v3, v3, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->messengerHandler:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 215
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 216
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "instr_uuid"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 217
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 218
    iget-object v4, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    invoke-virtual {v4, v2}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 222
    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2

    invoke-virtual {v1, v5, v6, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_1

    .line 223
    :try_start_2
    const-string v4, "InstrConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timed out while attempting to perform activity clean up for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 228
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 225
    :catch_0
    move-exception v4

    goto :goto_2

    .line 228
    :cond_1
    :goto_1
    :try_start_3
    iget-object v4, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    invoke-static {v4, v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->access$300(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/UUID;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 229
    goto :goto_3

    .line 228
    .end local p0    # "this":Landroidx/test/internal/runner/InstrumentationConnection;
    :catchall_1
    move-exception v4

    goto :goto_4

    .line 225
    :catch_1
    move-exception v4

    .line 226
    .local v4, "e":Ljava/lang/InterruptedException;
    :goto_2
    :try_start_4
    const-string v5, "InstrConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Interrupted while waiting for response from message with id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 228
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    iget-object v4, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    invoke-static {v4, v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->access$300(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/UUID;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 229
    nop

    .line 230
    :goto_3
    monitor-exit p0

    return-void

    .line 228
    :goto_4
    :try_start_6
    iget-object v5, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    invoke-static {v5, v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->access$300(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/UUID;)V

    .line 229
    throw v4

    .line 206
    .end local v0    # "uuid":Ljava/util/UUID;
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public declared-synchronized terminate()V
    .locals 3

    monitor-enter p0

    .line 186
    :try_start_0
    const-string v0, "InstrConnection"

    const-string v1, "Terminate is called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    new-instance v1, Landroidx/test/internal/runner/InstrumentationConnection$1;

    invoke-direct {v1, p0}, Landroidx/test/internal/runner/InstrumentationConnection$1;-><init>(Landroidx/test/internal/runner/InstrumentationConnection;)V

    invoke-static {v0, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->access$100(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->targetContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/test/internal/runner/InstrumentationConnection;->messengerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local p0    # "this":Landroidx/test/internal/runner/InstrumentationConnection;
    :cond_0
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized unregisterClient(Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "messenger"
        }
    .end annotation

    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Instrumentation Connection in not yet initialized"

    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 268
    const-string v0, "InstrConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregister client of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 270
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "instr_client_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v1, "instr_client_msgr"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 272
    iget-object v1, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 273
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 274
    iget-object v2, p0, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    invoke-virtual {v2, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    .line 266
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    .end local p0    # "this":Landroidx/test/internal/runner/InstrumentationConnection;
    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "messenger":Landroid/os/Messenger;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
