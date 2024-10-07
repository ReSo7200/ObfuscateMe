.class public Lorg/hamcrest/core/StringStartsWith;
.super Lorg/hamcrest/core/SubstringMatcher;
.source "StringStartsWith.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "substring"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lorg/hamcrest/core/SubstringMatcher;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static startsWith(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
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

    .line 38
    new-instance v0, Lorg/hamcrest/core/StringStartsWith;

    invoke-direct {v0, p0}, Lorg/hamcrest/core/StringStartsWith;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected evalSubstringOf(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lorg/hamcrest/core/StringStartsWith;->substring:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected relationship()Ljava/lang/String;
    .locals 1

    .line 23
    const-string/jumbo v0, "starting with"

    return-object v0
.end method
