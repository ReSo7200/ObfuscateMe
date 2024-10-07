.class final Lorg/hamcrest/Condition$Matched;
.super Lorg/hamcrest/Condition;
.source "Condition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hamcrest/Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Matched"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/Condition<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mismatch:Lorg/hamcrest/Description;

.field private final theValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 1
    .param p2, "mismatch"    # Lorg/hamcrest/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/hamcrest/Description;",
            ")V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/hamcrest/Condition$Matched;, "Lorg/hamcrest/Condition$Matched<TT;>;"
    .local p1, "theValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/hamcrest/Condition;-><init>(Lorg/hamcrest/Condition$1;)V

    .line 42
    iput-object p1, p0, Lorg/hamcrest/Condition$Matched;->theValue:Ljava/lang/Object;

    .line 43
    iput-object p2, p0, Lorg/hamcrest/Condition$Matched;->mismatch:Lorg/hamcrest/Description;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lorg/hamcrest/Description;Lorg/hamcrest/Condition$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/hamcrest/Description;
    .param p3, "x2"    # Lorg/hamcrest/Condition$1;

    .line 37
    .local p0, "this":Lorg/hamcrest/Condition$Matched;, "Lorg/hamcrest/Condition$Matched<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/hamcrest/Condition$Matched;-><init>(Ljava/lang/Object;Lorg/hamcrest/Description;)V

    return-void
.end method


# virtual methods
.method public and(Lorg/hamcrest/Condition$Step;)Lorg/hamcrest/Condition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Condition$Step<",
            "-TT;TU;>;)",
            "Lorg/hamcrest/Condition<",
            "TU;>;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/hamcrest/Condition$Matched;, "Lorg/hamcrest/Condition$Matched<TT;>;"
    .local p1, "next":Lorg/hamcrest/Condition$Step;, "Lorg/hamcrest/Condition$Step<-TT;TU;>;"
    iget-object v0, p0, Lorg/hamcrest/Condition$Matched;->theValue:Ljava/lang/Object;

    iget-object v1, p0, Lorg/hamcrest/Condition$Matched;->mismatch:Lorg/hamcrest/Description;

    invoke-interface {p1, v0, v1}, Lorg/hamcrest/Condition$Step;->apply(Ljava/lang/Object;Lorg/hamcrest/Description;)Lorg/hamcrest/Condition;

    move-result-object v0

    return-object v0
.end method

.method public matching(Lorg/hamcrest/Matcher;Ljava/lang/String;)Z
    .locals 2
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/hamcrest/Condition$Matched;, "Lorg/hamcrest/Condition$Matched<TT;>;"
    .local p1, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    iget-object v0, p0, Lorg/hamcrest/Condition$Matched;->theValue:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    return v0

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/hamcrest/Condition$Matched;->mismatch:Lorg/hamcrest/Description;

    invoke-interface {v0, p2}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 52
    iget-object v0, p0, Lorg/hamcrest/Condition$Matched;->theValue:Ljava/lang/Object;

    iget-object v1, p0, Lorg/hamcrest/Condition$Matched;->mismatch:Lorg/hamcrest/Description;

    invoke-interface {p1, v0, v1}, Lorg/hamcrest/Matcher;->describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V

    .line 53
    const/4 v0, 0x0

    return v0
.end method
