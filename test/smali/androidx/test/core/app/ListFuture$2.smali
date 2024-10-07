.class Landroidx/test/core/app/ListFuture$2;
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


# direct methods
.method constructor <init>(Landroidx/test/core/app/ListFuture;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/test/core/app/ListFuture;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 90
    .local p0, "this":Landroidx/test/core/app/ListFuture$2;, "Landroidx/test/core/app/ListFuture$2;"
    iput-object p1, p0, Landroidx/test/core/app/ListFuture$2;->this$0:Landroidx/test/core/app/ListFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 95
    .local p0, "this":Landroidx/test/core/app/ListFuture$2;, "Landroidx/test/core/app/ListFuture$2;"
    iget-object v0, p0, Landroidx/test/core/app/ListFuture$2;->this$0:Landroidx/test/core/app/ListFuture;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/test/core/app/ListFuture;->mValues:Ljava/util/List;

    .line 98
    iget-object v0, p0, Landroidx/test/core/app/ListFuture$2;->this$0:Landroidx/test/core/app/ListFuture;

    iput-object v1, v0, Landroidx/test/core/app/ListFuture;->mFutures:Ljava/util/List;

    .line 99
    return-void
.end method
