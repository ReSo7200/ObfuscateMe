.class public abstract Leu/chainfire/libsuperuser/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# static fields
.field private static final MAX_POLICY_LENGTH:I = 0xfe0

.field private static volatile canInject:Ljava/lang/Boolean;

.field private static volatile injected:Z

.field private static final synchronizer:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Leu/chainfire/libsuperuser/Policy;->synchronizer:Ljava/lang/Object;

    .line 63
    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/libsuperuser/Policy;->canInject:Ljava/lang/Boolean;

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Leu/chainfire/libsuperuser/Policy;->injected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canInject()Z
    .locals 6

    .line 105
    sget-object v0, Leu/chainfire/libsuperuser/Policy;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Leu/chainfire/libsuperuser/Policy;->canInject:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Leu/chainfire/libsuperuser/Policy;->canInject:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 108
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Leu/chainfire/libsuperuser/Policy;->canInject:Ljava/lang/Boolean;

    .line 114
    const-string/jumbo v2, "sh"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string/jumbo v5, "supolicy"

    aput-object v5, v4, v1

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v1}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 116
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    .local v4, "line":Ljava/lang/String;
    const-string/jumbo v5, "supolicy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Leu/chainfire/libsuperuser/Policy;->canInject:Ljava/lang/Boolean;

    .line 119
    goto :goto_1

    .line 121
    .end local v4    # "line":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 124
    :cond_2
    :goto_1
    sget-object v2, Leu/chainfire/libsuperuser/Policy;->canInject:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 125
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static haveInjected()Z
    .locals 1

    .line 71
    sget-boolean v0, Leu/chainfire/libsuperuser/Policy;->injected:Z

    return v0
.end method

.method public static resetCanInject()V
    .locals 2

    .line 133
    sget-object v0, Leu/chainfire/libsuperuser/Policy;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Leu/chainfire/libsuperuser/Policy;->canInject:Ljava/lang/Boolean;

    .line 135
    monitor-exit v0

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static resetInjected()V
    .locals 2

    .line 80
    sget-object v0, Leu/chainfire/libsuperuser/Policy;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Leu/chainfire/libsuperuser/Policy;->injected:Z

    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected getInjectCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Leu/chainfire/libsuperuser/Policy;->getInjectCommands(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getInjectCommands(Z)Ljava/util/List;
    .locals 9
    .param p1, "allowBlocking"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    sget-object v0, Leu/chainfire/libsuperuser/Policy;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    invoke-static {}, Leu/chainfire/libsuperuser/Shell$SU;->isSELinuxEnforcing()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 163
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Leu/chainfire/libsuperuser/Policy;->canInject()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-object v2

    .line 166
    :cond_1
    sget-boolean v1, Leu/chainfire/libsuperuser/Policy;->injected:Z

    if-eqz v1, :cond_2

    monitor-exit v0

    return-object v2

    .line 169
    :cond_2
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Policy;->getPolicies()[Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "policies":[Ljava/lang/String;
    if-eqz v1, :cond_7

    array-length v3, v1

    if-lez v3, :cond_7

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v2, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, ""

    .line 175
    .local v3, "command":Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    .line 176
    .local v6, "policy":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x3

    const/16 v8, 0xfe0

    if-ge v7, v8, :cond_3

    goto :goto_1

    .line 179
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "supolicy --live"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v7, ""

    move-object v3, v7

    goto :goto_2

    .line 177
    :cond_4
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 175
    .end local v6    # "policy":Ljava/lang/String;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 183
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "supolicy --live"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_6
    monitor-exit v0

    return-object v2

    .line 191
    .end local v2    # "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "command":Ljava/lang/String;
    :cond_7
    monitor-exit v0

    return-object v2

    .line 192
    .end local v1    # "policies":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract getPolicies()[Ljava/lang/String;
.end method

.method public inject()V
    .locals 3

    .line 202
    sget-object v0, Leu/chainfire/libsuperuser/Policy;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Policy;->getInjectCommands()Ljava/util/List;

    move-result-object v1

    .line 207
    .local v1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 208
    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$SU;->run(Ljava/util/List;)Ljava/util/List;

    .line 212
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Leu/chainfire/libsuperuser/Policy;->injected:Z

    .line 213
    .end local v1    # "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v0

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public inject(Leu/chainfire/libsuperuser/Shell$Interactive;Z)V
    .locals 3
    .param p1, "shell"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p2, "waitForIdle"    # Z

    .line 227
    sget-object v0, Leu/chainfire/libsuperuser/Policy;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    invoke-virtual {p0, p2}, Leu/chainfire/libsuperuser/Policy;->getInjectCommands(Z)Ljava/util/List;

    move-result-object v1

    .line 232
    .local v1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 233
    invoke-virtual {p1, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand(Ljava/lang/Object;)V

    .line 234
    if-eqz p2, :cond_0

    .line 235
    invoke-virtual {p1}, Leu/chainfire/libsuperuser/Shell$Interactive;->waitForIdle()Z

    .line 240
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Leu/chainfire/libsuperuser/Policy;->injected:Z

    .line 241
    .end local v1    # "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v0

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
