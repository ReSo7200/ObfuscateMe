.class public Lorg/hamcrest/core/StringContains;
.super Lorg/hamcrest/core/SubstringMatcher;
.source "StringContains.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "substring"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lorg/hamcrest/core/SubstringMatcher;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static containsString(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 1
    .param p0, "substring"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 39
    new-instance v0, Lorg/hamcrest/core/StringContains;

    invoke-direct {v0, p0}, Lorg/hamcrest/core/StringContains;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected evalSubstringOf(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lorg/hamcrest/core/StringContains;->substring:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected relationship()Ljava/lang/String;
    .locals 1

    .line 23
    const-string v0, "containing"

    return-object v0
.end method
