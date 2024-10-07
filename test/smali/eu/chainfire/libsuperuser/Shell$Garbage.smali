.class Leu/chainfire/libsuperuser/Shell$Garbage;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Garbage"
.end annotation


# static fields
.field static final shells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Leu/chainfire/libsuperuser/Shell$Threaded;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Leu/chainfire/libsuperuser/Shell$Garbage;->shells:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 3610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized collect(Leu/chainfire/libsuperuser/Shell$Threaded;)V
    .locals 3
    .param p0, "shell"    # Leu/chainfire/libsuperuser/Shell$Threaded;

    const-class v0, Leu/chainfire/libsuperuser/Shell$Garbage;

    monitor-enter v0

    .line 3622
    :try_start_0
    sget-object v1, Leu/chainfire/libsuperuser/Shell$Garbage;->shells:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3623
    sget-object v1, Leu/chainfire/libsuperuser/Shell$Garbage;->shells:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3625
    :cond_0
    monitor-exit v0

    return-void

    .line 3621
    .end local p0    # "shell":Leu/chainfire/libsuperuser/Shell$Threaded;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static declared-synchronized protect(Leu/chainfire/libsuperuser/Shell$Threaded;)V
    .locals 3
    .param p0, "shell"    # Leu/chainfire/libsuperuser/Shell$Threaded;

    const-class v0, Leu/chainfire/libsuperuser/Shell$Garbage;

    monitor-enter v0

    .line 3615
    :try_start_0
    sget-object v1, Leu/chainfire/libsuperuser/Shell$Garbage;->shells:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3616
    sget-object v1, Leu/chainfire/libsuperuser/Shell$Garbage;->shells:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3618
    :cond_0
    monitor-exit v0

    return-void

    .line 3614
    .end local p0    # "shell":Leu/chainfire/libsuperuser/Shell$Threaded;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
