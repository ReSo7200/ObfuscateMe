.class abstract Lorg/junit/runner/notification/RunNotifier$SafeNotifier;
.super Ljava/lang/Object;
.source "RunNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runner/notification/RunNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SafeNotifier"
.end annotation


# instance fields
.field private final currentListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/junit/runner/notification/RunNotifier;


# direct methods
.method constructor <init>(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 1

    .line 59
    invoke-static {p1}, Lorg/junit/runner/notification/RunNotifier;->access$000(Lorg/junit/runner/notification/RunNotifier;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/junit/runner/notification/RunNotifier$SafeNotifier;-><init>(Lorg/junit/runner/notification/RunNotifier;Ljava/util/List;)V

    .line 60
    return-void
.end method

.method constructor <init>(Lorg/junit/runner/notification/RunNotifier;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p2, "currentListeners":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/RunListener;>;"
    iput-object p1, p0, Lorg/junit/runner/notification/RunNotifier$SafeNotifier;->this$0:Lorg/junit/runner/notification/RunNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lorg/junit/runner/notification/RunNotifier$SafeNotifier;->currentListeners:Ljava/util/List;

    .line 64
    return-void
.end method


# virtual methods
.method protected abstract notifyListener(Lorg/junit/runner/notification/RunListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method run()V
    .locals 8

    .line 67
    iget-object v0, p0, Lorg/junit/runner/notification/RunNotifier$SafeNotifier;->currentListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 68
    .local v0, "capacity":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v1, "safeListeners":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/RunListener;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .local v2, "failures":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/Failure;>;"
    iget-object v3, p0, Lorg/junit/runner/notification/RunNotifier$SafeNotifier;->currentListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/junit/runner/notification/RunListener;

    .line 72
    .local v4, "listener":Lorg/junit/runner/notification/RunListener;
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/junit/runner/notification/RunNotifier$SafeNotifier;->notifyListener(Lorg/junit/runner/notification/RunListener;)V

    .line 73
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_1

    .line 74
    :catch_0
    move-exception v5

    .line 75
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/junit/runner/notification/Failure;

    sget-object v7, Lorg/junit/runner/Description;->TEST_MECHANISM:Lorg/junit/runner/Description;

    invoke-direct {v6, v7, v5}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v4    # "listener":Lorg/junit/runner/notification/RunListener;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 78
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lorg/junit/runner/notification/RunNotifier$SafeNotifier;->this$0:Lorg/junit/runner/notification/RunNotifier;

    invoke-static {v3, v1, v2}, Lorg/junit/runner/notification/RunNotifier;->access$100(Lorg/junit/runner/notification/RunNotifier;Ljava/util/List;Ljava/util/List;)V

    .line 79
    return-void
.end method
