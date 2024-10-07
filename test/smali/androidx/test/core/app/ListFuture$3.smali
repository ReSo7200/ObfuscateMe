.class Landroidx/test/core/app/ListFuture$3;
.super Ljava/lang/Object;
.source "ListFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/core/app/ListFuture;->init(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/core/app/ListFuture;

.field final synthetic val$index:I

.field final synthetic val$listenable:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Landroidx/test/core/app/ListFuture;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/test/core/app/ListFuture;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$index",
            "val$listenable"
        }
    .end annotation

    .line 128
    .local p0, "this":Landroidx/test/core/app/ListFuture$3;, "Landroidx/test/core/app/ListFuture$3;"
    iput-object p1, p0, Landroidx/test/core/app/ListFuture$3;->this$0:Landroidx/test/core/app/ListFuture;

    iput p2, p0, Landroidx/test/core/app/ListFuture$3;->val$index:I

    iput-object p3, p0, Landroidx/test/core/app/ListFuture$3;->val$listenable:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 131
    .local p0, "this":Landroidx/test/core/app/ListFuture$3;, "Landroidx/test/core/app/ListFuture$3;"
    iget-object v0, p0, Landroidx/test/core/app/ListFuture$3;->this$0:Landroidx/test/core/app/ListFuture;

    iget v1, p0, Landroidx/test/core/app/ListFuture$3;->val$index:I

    iget-object v2, p0, Landroidx/test/core/app/ListFuture$3;->val$listenable:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1, v2}, Landroidx/test/core/app/ListFuture;->setOneValue(ILjava/util/concurrent/Future;)V

    .line 132
    return-void
.end method
