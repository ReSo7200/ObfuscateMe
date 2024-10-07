.class public Leu/chainfire/libsuperuser/StreamGobbler;
.super Ljava/lang/Thread;
.source "StreamGobbler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;,
        Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    }
.end annotation


# static fields
.field private static threadCounter:I


# instance fields
.field private volatile active:Z

.field private volatile calledOnClose:Z

.field private final inputStream:Ljava/io/InputStream;

.field private final lineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

.field private final reader:Ljava/io/BufferedReader;

.field private final shell:Ljava/lang/String;

.field private final streamClosedListener:Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;

.field private final writer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    sput v0, Leu/chainfire/libsuperuser/StreamGobbler;->threadCounter:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;)V
    .locals 2
    .param p1, "shell"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "onLineListener"    # Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    .param p4, "onStreamClosedListener"    # Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gobbler#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Leu/chainfire/libsuperuser/StreamGobbler;->incThreadCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->active:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->calledOnClose:Z

    .line 123
    iput-object p1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->shell:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Leu/chainfire/libsuperuser/StreamGobbler;->inputStream:Ljava/io/InputStream;

    .line 125
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->reader:Ljava/io/BufferedReader;

    .line 126
    iput-object p3, p0, Leu/chainfire/libsuperuser/StreamGobbler;->lineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .line 127
    iput-object p4, p0, Leu/chainfire/libsuperuser/StreamGobbler;->streamClosedListener:Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->writer:Ljava/util/List;

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/List;)V
    .locals 2
    .param p1, "shell"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p3, "outputList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gobbler#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Leu/chainfire/libsuperuser/StreamGobbler;->incThreadCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->active:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->calledOnClose:Z

    .line 100
    iput-object p1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->shell:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Leu/chainfire/libsuperuser/StreamGobbler;->inputStream:Ljava/io/InputStream;

    .line 102
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->reader:Ljava/io/BufferedReader;

    .line 103
    iput-object p3, p0, Leu/chainfire/libsuperuser/StreamGobbler;->writer:Ljava/util/List;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->lineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .line 105
    iput-object v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->streamClosedListener:Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;

    .line 106
    return-void
.end method

.method private static incThreadCounter()I
    .locals 3

    .line 38
    const-class v0, Leu/chainfire/libsuperuser/StreamGobbler;

    monitor-enter v0

    .line 39
    :try_start_0
    sget v1, Leu/chainfire/libsuperuser/StreamGobbler;->threadCounter:I

    .line 40
    .local v1, "ret":I
    sget v2, Leu/chainfire/libsuperuser/StreamGobbler;->threadCounter:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Leu/chainfire/libsuperuser/StreamGobbler;->threadCounter:I

    .line 41
    monitor-exit v0

    return v1

    .line 42
    .end local v1    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method conditionalJoin()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 253
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->calledOnClose:Z

    if-eqz v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_1

    return-void

    .line 255
    :cond_1
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/StreamGobbler;->join()V

    .line 256
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 238
    iget-object v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOnLineListener()Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    .locals 1

    .line 249
    iget-object v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->lineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object v0
.end method

.method public isSuspended()Z
    .locals 1

    .line 225
    monitor-enter p0

    .line 226
    :try_start_0
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->active:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeGobbling()V
    .locals 1

    .line 179
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->active:Z

    if-nez v0, :cond_0

    .line 180
    monitor-enter p0

    .line 181
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->active:Z

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 185
    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 137
    nop

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 138
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "[%s] %s"

    iget-object v4, p0, Leu/chainfire/libsuperuser/StreamGobbler;->shell:Ljava/lang/String;

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/libsuperuser/Debug;->logOutput(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->writer:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->writer:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->lineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->lineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    invoke-interface {v1, v2}, Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;->onLine(Ljava/lang/String;)V

    .line 141
    :cond_2
    :goto_0
    iget-boolean v1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->active:Z

    if-nez v1, :cond_0

    .line 142
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    const-wide/16 v3, 0x80

    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    goto :goto_1

    .line 148
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 145
    :catch_0
    move-exception v1

    .line 148
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 157
    .end local v2    # "line":Ljava/lang/String;
    :cond_3
    goto :goto_3

    .line 151
    :catch_1
    move-exception v1

    .line 153
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Leu/chainfire/libsuperuser/StreamGobbler;->streamClosedListener:Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;

    if-eqz v2, :cond_4

    .line 154
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->calledOnClose:Z

    .line 155
    iget-object v2, p0, Leu/chainfire/libsuperuser/StreamGobbler;->streamClosedListener:Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;

    invoke-interface {v2}, Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;->onStreamClosed()V

    .line 161
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    :try_start_4
    iget-object v1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 164
    goto :goto_4

    .line 162
    :catch_2
    move-exception v1

    .line 166
    :goto_4
    iget-boolean v1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->calledOnClose:Z

    if-nez v1, :cond_5

    .line 167
    iget-object v1, p0, Leu/chainfire/libsuperuser/StreamGobbler;->streamClosedListener:Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;

    if-eqz v1, :cond_5

    .line 168
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->calledOnClose:Z

    .line 169
    iget-object v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->streamClosedListener:Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;

    invoke-interface {v0}, Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;->onStreamClosed()V

    .line 172
    :cond_5
    return-void
.end method

.method public suspendGobbling()V
    .locals 1

    .line 194
    monitor-enter p0

    .line 195
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->active:Z

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 197
    monitor-exit p0

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForSuspend()V
    .locals 2

    .line 207
    monitor-enter p0

    .line 208
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/StreamGobbler;->active:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 210
    const-wide/16 v0, 0x20

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :goto_1
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    goto :goto_1

    .line 215
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
