.class Lorg/junit/runners/RuleContainer$RuleEntry;
.super Ljava/lang/Object;
.source "RuleContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runners/RuleContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RuleEntry"
.end annotation


# static fields
.field static final TYPE_METHOD_RULE:I = 0x0

.field static final TYPE_TEST_RULE:I = 0x1


# instance fields
.field final order:I

.field final rule:Ljava/lang/Object;

.field final type:I


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjava/lang/Integer;)V
    .locals 1
    .param p1, "rule"    # Ljava/lang/Object;
    .param p2, "type"    # I
    .param p3, "order"    # Ljava/lang/Integer;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/junit/runners/RuleContainer$RuleEntry;->rule:Ljava/lang/Object;

    .line 109
    iput p2, p0, Lorg/junit/runners/RuleContainer$RuleEntry;->type:I

    .line 110
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lorg/junit/runners/RuleContainer$RuleEntry;->order:I

    .line 111
    return-void
.end method
