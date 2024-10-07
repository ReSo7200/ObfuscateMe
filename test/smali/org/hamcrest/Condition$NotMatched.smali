.class final Lorg/hamcrest/Condition$NotMatched;
.super Lorg/hamcrest/Condition;
.source "Condition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hamcrest/Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotMatched"
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


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 62
    .local p0, "this":Lorg/hamcrest/Condition$NotMatched;, "Lorg/hamcrest/Condition$NotMatched<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/hamcrest/Condition;-><init>(Lorg/hamcrest/Condition$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/hamcrest/Condition$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/hamcrest/Condition$1;

    .line 62
    .local p0, "this":Lorg/hamcrest/Condition$NotMatched;, "Lorg/hamcrest/Condition$NotMatched<TT;>;"
    invoke-direct {p0}, Lorg/hamcrest/Condition$NotMatched;-><init>()V

    return-void
.end method


# virtual methods
.method public and(Lorg/hamcrest/Condition$Step;)Lorg/hamcrest/Condition;
    .locals 1
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

    .line 66
    .local p0, "this":Lorg/hamcrest/Condition$NotMatched;, "Lorg/hamcrest/Condition$NotMatched<TT;>;"
    .local p1, "mapping":Lorg/hamcrest/Condition$Step;, "Lorg/hamcrest/Condition$Step<-TT;TU;>;"
    invoke-static {}, Lorg/hamcrest/Condition$NotMatched;->notMatched()Lorg/hamcrest/Condition;

    move-result-object v0

    return-object v0
.end method

.method public matching(Lorg/hamcrest/Matcher;Ljava/lang/String;)Z
    .locals 1
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

    .line 63
    .local p0, "this":Lorg/hamcrest/Condition$NotMatched;, "Lorg/hamcrest/Condition$NotMatched<TT;>;"
    .local p1, "match":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    const/4 v0, 0x0

    return v0
.end method
