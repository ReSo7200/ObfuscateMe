.class public Leu/chainfire/libsuperuser/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/libsuperuser/Shell$Garbage;,
        Leu/chainfire/libsuperuser/Shell$Pool;,
        Leu/chainfire/libsuperuser/Shell$PoolWrapper;,
        Leu/chainfire/libsuperuser/Shell$ThreadedAutoCloseable;,
        Leu/chainfire/libsuperuser/Shell$Threaded;,
        Leu/chainfire/libsuperuser/Shell$Interactive;,
        Leu/chainfire/libsuperuser/Shell$SyncCommands;,
        Leu/chainfire/libsuperuser/Shell$DeprecatedSyncCommands;,
        Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;,
        Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;,
        Leu/chainfire/libsuperuser/Shell$Builder;,
        Leu/chainfire/libsuperuser/Shell$Command;,
        Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;,
        Leu/chainfire/libsuperuser/Shell$OnCommandInputStream;,
        Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;,
        Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDERR;,
        Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDOUT;,
        Leu/chainfire/libsuperuser/Shell$OnCommandResultListenerUnbuffered;,
        Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;,
        Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;,
        Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;,
        Leu/chainfire/libsuperuser/Shell$OnResult;,
        Leu/chainfire/libsuperuser/Shell$SU;,
        Leu/chainfire/libsuperuser/Shell$SH;,
        Leu/chainfire/libsuperuser/Shell$ShellDiedException;,
        Leu/chainfire/libsuperuser/Shell$ShellNotClosedException;,
        Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;
    }
.end annotation


# static fields
.field protected static final availableTestCommands:[Ljava/lang/String;

.field private static volatile redirectDeprecated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Leu/chainfire/libsuperuser/Shell;->redirectDeprecated:Z

    .line 289
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "echo -BOC-"

    aput-object v3, v1, v2

    const-string v2, "id"

    aput-object v2, v1, v0

    sput-object v1, Leu/chainfire/libsuperuser/Shell;->availableTestCommands:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 56
    sget-boolean v0, Leu/chainfire/libsuperuser/Shell;->redirectDeprecated:Z

    return v0
.end method

.method public static isRedirectDeprecated()Z
    .locals 1

    .line 105
    sget-boolean v0, Leu/chainfire/libsuperuser/Shell;->redirectDeprecated:Z

    return v0
.end method

.method protected static parseAvailableResult(Ljava/util/List;Z)Z
    .locals 5
    .param p1, "checkForRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 302
    .local p0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 303
    return v0

    .line 306
    :cond_0
    const/4 v1, 0x0

    .line 308
    .local v1, "echo_seen":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 309
    .local v3, "line":Ljava/lang/String;
    const-string/jumbo v4, "uid="

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 311
    if-eqz p1, :cond_1

    const-string/jumbo v2, "uid=0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 312
    :cond_3
    const-string v4, "-BOC-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 316
    const/4 v1, 0x1

    .line 318
    .end local v3    # "line":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 320
    :cond_5
    return v1
.end method

.method public static run(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .param p0, "shell"    # Ljava/lang/String;
    .param p1, "commands"    # [Ljava/lang/String;
    .param p2, "wantSTDERR"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;
    .locals 16
    .param p0, "shell"    # Ljava/lang/String;
    .param p1, "commands"    # [Ljava/lang/String;
    .param p2, "environment"    # [Ljava/lang/String;
    .param p3, "wantSTDERR"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "shellUpper":Ljava/lang/String;
    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getSanityChecksEnabledEffective()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->onMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    const-string v0, "Application attempted to run a shell command from the main thread"

    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 192
    new-instance v6, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;

    invoke-direct {v6, v0}, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 195
    :cond_1
    :goto_0
    sget-boolean v0, Leu/chainfire/libsuperuser/Shell;->redirectDeprecated:Z

    if-eqz v0, :cond_2

    .line 197
    invoke-static/range {p0 .. p0}, Leu/chainfire/libsuperuser/Shell$Pool;->getWrapper(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->run(Ljava/lang/Object;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 200
    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "[%s%%] START"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->logCommand(Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 206
    .local v6, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz v3, :cond_5

    .line 207
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 209
    .local v7, "newEnvironment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v8, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v0

    :goto_1
    const-string v10, "="

    if-ge v9, v8, :cond_4

    :try_start_1
    aget-object v11, v3, v9

    .line 210
    .local v11, "entry":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    move v12, v10

    .local v12, "split":I
    if-ltz v10, :cond_3

    .line 211
    invoke-virtual {v11, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .end local v11    # "entry":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 214
    .end local v12    # "split":I
    :cond_4
    const/4 v8, 0x0

    .line 215
    .local v8, "i":I
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v9

    .line 216
    .end local p2    # "environment":[Ljava/lang/String;
    .local v3, "environment":[Ljava/lang/String;
    :try_start_2
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 217
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v8

    .line 218
    nop

    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v8, v8, 0x1

    .line 219
    goto :goto_2

    .line 280
    .end local v3    # "environment":[Ljava/lang/String;
    .end local v7    # "newEnvironment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "i":I
    .restart local p2    # "environment":[Ljava/lang/String;
    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 277
    :catch_1
    move-exception v0

    goto/16 :goto_8

    .line 224
    .end local p2    # "environment":[Ljava/lang/String;
    .restart local v3    # "environment":[Ljava/lang/String;
    :cond_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 225
    .local v7, "process":Ljava/lang/Process;
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 226
    .local v8, "STDIN":Ljava/io/DataOutputStream;
    new-instance v9, Leu/chainfire/libsuperuser/StreamGobbler;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v9, v10, v11, v6}, Leu/chainfire/libsuperuser/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/List;)V

    .line 228
    .local v9, "STDOUT":Leu/chainfire/libsuperuser/StreamGobbler;
    new-instance v10, Leu/chainfire/libsuperuser/StreamGobbler;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    if-eqz v4, :cond_6

    move-object v13, v6

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    :goto_3
    invoke-direct {v10, v11, v12, v13}, Leu/chainfire/libsuperuser/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/List;)V

    .line 232
    .local v10, "STDERR":Leu/chainfire/libsuperuser/StreamGobbler;
    invoke-virtual {v9}, Leu/chainfire/libsuperuser/StreamGobbler;->start()V

    .line 233
    invoke-virtual {v10}, Leu/chainfire/libsuperuser/StreamGobbler;->start()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 235
    :try_start_3
    array-length v11, v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    const-string v12, "UTF-8"

    if-ge v0, v11, :cond_7

    :try_start_4
    aget-object v13, v2, v0

    .line 236
    .local v13, "write":Ljava/lang/String;
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v15, "[%s+] %s"

    filled-new-array {v5, v13}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v14, v15, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/libsuperuser/Debug;->logCommand(Ljava/lang/String;)V

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "\n"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 238
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 235
    .end local v13    # "write":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p1

    goto :goto_4

    .line 240
    :cond_7
    const-string v0, "exit\n"

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 241
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 253
    goto :goto_5

    .line 242
    :catch_2
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v11, "EPIPE"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v11, "Stream closed"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    .line 251
    :cond_8
    nop

    .end local v3    # "environment":[Ljava/lang/String;
    .end local v5    # "shellUpper":Ljava/lang/String;
    .end local v6    # "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p0    # "shell":Ljava/lang/String;
    .end local p1    # "commands":[Ljava/lang/String;
    .end local p3    # "wantSTDERR":Z
    throw v0

    .line 257
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "environment":[Ljava/lang/String;
    .restart local v5    # "shellUpper":Ljava/lang/String;
    .restart local v6    # "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "shell":Ljava/lang/String;
    .restart local p1    # "commands":[Ljava/lang/String;
    .restart local p3    # "wantSTDERR":Z
    :cond_9
    :goto_5
    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    .line 265
    :try_start_6
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    .line 268
    goto :goto_6

    .line 266
    :catch_3
    move-exception v0

    .line 269
    :goto_6
    :try_start_7
    invoke-virtual {v9}, Leu/chainfire/libsuperuser/StreamGobbler;->join()V

    .line 270
    invoke-virtual {v10}, Leu/chainfire/libsuperuser/StreamGobbler;->join()V

    .line 271
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    .line 274
    invoke-static/range {p0 .. p0}, Leu/chainfire/libsuperuser/Shell$SU;->isSU(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v7}, Ljava/lang/Process;->exitValue()I

    move-result v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    const/16 v2, 0xff

    if-ne v0, v2, :cond_a

    .line 275
    const/4 v6, 0x0

    goto :goto_9

    .line 280
    .end local v7    # "process":Ljava/lang/Process;
    .end local v8    # "STDIN":Ljava/io/DataOutputStream;
    .end local v9    # "STDOUT":Leu/chainfire/libsuperuser/StreamGobbler;
    .end local v10    # "STDERR":Leu/chainfire/libsuperuser/StreamGobbler;
    :catch_4
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_7
    const/4 v6, 0x0

    goto :goto_a

    .line 277
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v0

    .line 279
    .local v0, "e":Ljava/io/IOException;
    :goto_8
    const/4 v6, 0x0

    .line 283
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_9
    nop

    .line 285
    :goto_a
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v7, "[%s%%] END"

    invoke-static {v0, v7, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->logCommand(Ljava/lang/String;)V

    .line 286
    return-object v6
.end method

.method public static setRedirectDeprecated(Z)V
    .locals 0
    .param p0, "redirectDeprecated"    # Z

    .line 116
    sput-boolean p0, Leu/chainfire/libsuperuser/Shell;->redirectDeprecated:Z

    .line 117
    return-void
.end method
