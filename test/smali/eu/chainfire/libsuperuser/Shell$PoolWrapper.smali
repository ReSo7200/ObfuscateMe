.class public Leu/chainfire/libsuperuser/Shell$PoolWrapper;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/Shell$DeprecatedSyncCommands;
.implements Leu/chainfire/libsuperuser/Shell$SyncCommands;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PoolWrapper"
.end annotation


# instance fields
.field private final shellCommand:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "shell"    # Ljava/lang/String;

    .line 2983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2984
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->shellCommand:Ljava/lang/String;

    .line 2985
    return-void
.end method


# virtual methods
.method public get()Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    .line 3005
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->shellCommand:Ljava/lang/String;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Pool;->get(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    return-object v0
.end method

.method public get(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1
    .param p1, "onShellOpenResultListener"    # Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    .line 3027
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->shellCommand:Ljava/lang/String;

    invoke-static {v0, p1}, Leu/chainfire/libsuperuser/Shell$Pool;->get(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    return-object v0
.end method

.method public getUnpooled()Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1

    .line 3040
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->shellCommand:Ljava/lang/String;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Pool;->getUnpooled(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    return-object v0
.end method

.method public getUnpooled(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1
    .param p1, "onShellOpenResultListener"    # Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;

    .line 3054
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->shellCommand:Ljava/lang/String;

    invoke-static {v0, p1}, Leu/chainfire/libsuperuser/Shell$Pool;->getUnpooled(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    return-object v0
.end method

.method public run(Ljava/lang/Object;)I
    .locals 2
    .param p1, "commands"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    .line 3136
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->run(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Z)I

    move-result v0

    return v0
.end method

.method public run(Ljava/lang/Object;Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;)I
    .locals 2
    .param p1, "commands"    # Ljava/lang/Object;
    .param p2, "onSyncCommandInputStreamListener"    # Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    .line 3167
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->get()Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    .line 3169
    .local v0, "shell":Leu/chainfire/libsuperuser/Shell$Threaded;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Leu/chainfire/libsuperuser/Shell$Threaded;->run(Ljava/lang/Object;Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3171
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    .line 3169
    return v1

    .line 3171
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    .line 3172
    throw v1
.end method

.method public run(Ljava/lang/Object;Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;)I
    .locals 2
    .param p1, "commands"    # Ljava/lang/Object;
    .param p2, "onSyncCommandLineListener"    # Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    .line 3155
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->get()Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    .line 3157
    .local v0, "shell":Leu/chainfire/libsuperuser/Shell$Threaded;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Leu/chainfire/libsuperuser/Shell$Threaded;->run(Ljava/lang/Object;Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3159
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    .line 3157
    return v1

    .line 3159
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    .line 3160
    throw v1
.end method

.method public run(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Z)I
    .locals 2
    .param p1, "commands"    # Ljava/lang/Object;
    .param p4, "clear"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    .line 3143
    .local p2, "STDOUT":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "STDERR":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->get()Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    .line 3145
    .local v0, "shell":Leu/chainfire/libsuperuser/Shell$Threaded;
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Leu/chainfire/libsuperuser/Shell$Threaded;->run(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Z)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3147
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    .line 3145
    return v1

    .line 3147
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    .line 3148
    throw v1
.end method

.method public run(Ljava/lang/Object;Z)Ljava/util/List;
    .locals 6
    .param p1, "commands"    # Ljava/lang/Object;
    .param p2, "wantSTDERR"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3063
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->get()Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v1
    :try_end_0
    .catch Leu/chainfire/libsuperuser/Shell$ShellDiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3065
    .local v1, "shell":Leu/chainfire/libsuperuser/Shell$Threaded;
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [I

    .line 3066
    .local v2, "exitCode":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3067
    .local v3, "output":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;

    invoke-direct {v4, p0, v2, v3, p2}, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;-><init>(Leu/chainfire/libsuperuser/Shell$PoolWrapper;[ILjava/util/List;Z)V

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v5, v4}, Leu/chainfire/libsuperuser/Shell$Threaded;->addCommand(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V

    .line 3077
    invoke-virtual {v1}, Leu/chainfire/libsuperuser/Shell$Threaded;->waitForIdle()Z

    .line 3078
    aget v4, v2, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v4, :cond_0

    .line 3081
    :try_start_2
    invoke-virtual {v1}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    .line 3078
    return-object v0

    .line 3079
    :cond_0
    nop

    .line 3081
    invoke-virtual {v1}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    .line 3079
    return-object v3

    .line 3081
    .end local v2    # "exitCode":[I
    .end local v3    # "output":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Leu/chainfire/libsuperuser/Shell$Threaded;->close()V

    .line 3082
    nop

    .end local p1    # "commands":Ljava/lang/Object;
    .end local p2    # "wantSTDERR":Z
    throw v2
    :try_end_2
    .catch Leu/chainfire/libsuperuser/Shell$ShellDiedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3083
    .end local v1    # "shell":Leu/chainfire/libsuperuser/Shell$Threaded;
    .restart local p1    # "commands":Ljava/lang/Object;
    .restart local p2    # "wantSTDERR":Z
    :catch_0
    move-exception v1

    .line 3084
    .local v1, "e":Leu/chainfire/libsuperuser/Shell$ShellDiedException;
    return-object v0
.end method

.method public run(Ljava/lang/Object;[Ljava/lang/String;Z)Ljava/util/List;
    .locals 12
    .param p1, "commands"    # Ljava/lang/Object;
    .param p2, "environment"    # [Ljava/lang/String;
    .param p3, "wantSTDERR"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
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

    .line 3094
    if-nez p2, :cond_0

    .line 3095
    invoke-virtual {p0, p1, p3}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->run(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3098
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3099
    new-array v0, v2, [Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    .local v0, "_commands":[Ljava/lang/String;
    goto :goto_0

    .line 3100
    .end local v0    # "_commands":[Ljava/lang/String;
    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3101
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .restart local v0    # "_commands":[Ljava/lang/String;
    goto :goto_0

    .line 3102
    .end local v0    # "_commands":[Ljava/lang/String;
    :cond_2
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 3103
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 3108
    .restart local v0    # "_commands":[Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3109
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v4, p2

    move v5, v1

    :goto_1
    const-string v6, "\""

    if-ge v5, v4, :cond_6

    aget-object v7, p2, v5

    .line 3111
    .local v7, "entry":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    move v10, v9

    .local v10, "split":I
    if-ltz v9, :cond_5

    .line 3112
    add-int/lit8 v9, v10, 0x1

    add-int/lit8 v11, v10, 0x2

    invoke-virtual {v7, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 3113
    .local v6, "quoted":Z
    invoke-virtual {v3, v7, v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 3114
    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const-string v8, "=\""

    :goto_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3115
    add-int/lit8 v8, v10, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3116
    if-eqz v6, :cond_4

    const-string v8, " "

    goto :goto_3

    :cond_4
    const-string v8, "\" "

    :goto_3
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3109
    .end local v6    # "quoted":Z
    .end local v7    # "entry":Ljava/lang/String;
    .end local v10    # "split":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3119
    :cond_6
    const-string/jumbo v4, "sh -c \"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3120
    array-length v4, v0

    move v5, v1

    :goto_4
    if-ge v5, v4, :cond_7

    aget-object v7, v0, v5

    .line 3121
    .local v7, "line":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3122
    const-string v8, "\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3120
    .end local v7    # "line":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3124
    :cond_7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3125
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3126
    const-string v5, "\\"

    const-string v6, "\\\\"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 3127
    const-string v5, "$"

    const-string v6, "\\$"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 3125
    invoke-virtual {p0, v2, p3}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->run(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 3105
    .end local v0    # "_commands":[Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "commands parameter must be of type String, List<String> or String[]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
