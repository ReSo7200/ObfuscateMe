.class Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;
.super Lorg/junit/runners/model/Statement;
.source "Theories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->methodBlock(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;

.field final synthetic val$statement:Lorg/junit/runners/model/Statement;


# direct methods
.method constructor <init>(Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;Lorg/junit/runners/model/Statement;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;->this$1:Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;

    iput-object p2, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;->val$statement:Lorg/junit/runners/model/Statement;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 237
    :try_start_0
    iget-object v0, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;->val$statement:Lorg/junit/runners/model/Statement;

    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V

    .line 238
    iget-object v0, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;->this$1:Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;

    iget-object v0, v0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->this$0:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    invoke-virtual {v0}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->handleDataPointSuccess()V
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;->this$1:Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;

    iget-object v1, v1, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->this$0:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    iget-object v2, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;->this$1:Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;

    iget-object v2, v2, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->val$complete:Lorg/junit/experimental/theories/internal/Assignments;

    iget-object v3, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;->this$1:Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;

    iget-object v3, v3, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->this$0:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    invoke-static {v3}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->access$000(Lorg/junit/experimental/theories/Theories$TheoryAnchor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/junit/experimental/theories/internal/Assignments;->getArgumentStrings(Z)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->reportParameterizedError(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 239
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Lorg/junit/internal/AssumptionViolatedException;
    iget-object v1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;->this$1:Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;

    iget-object v1, v1, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->this$0:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    invoke-virtual {v1, v0}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->handleAssumptionViolation(Lorg/junit/internal/AssumptionViolatedException;)V

    .line 244
    .end local v0    # "e":Lorg/junit/internal/AssumptionViolatedException;
    :goto_0
    nop

    .line 245
    :goto_1
    return-void
.end method
