.class public Lorg/junit/matchers/JUnitMatchers;
.super Ljava/lang/Object;
.source "JUnitMatchers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static both(Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/CombinableMatcher$CombinableBothMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/CombinableMatcher$CombinableBothMatcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0}, Lorg/hamcrest/CoreMatchers;->both(Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/CombinableMatcher$CombinableBothMatcher;

    move-result-object v0

    return-object v0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-static {p0}, Lorg/hamcrest/CoreMatchers;->containsString(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static either(Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/CombinableMatcher$CombinableEitherMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/CombinableMatcher$CombinableEitherMatcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0}, Lorg/hamcrest/CoreMatchers;->either(Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/CombinableMatcher$CombinableEitherMatcher;

    move-result-object v0

    return-object v0
.end method

.method public static everyItem(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    .local p0, "elementMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    invoke-static {p0}, Lorg/hamcrest/CoreMatchers;->everyItem(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static hasItem(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "-TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    .local p0, "element":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lorg/hamcrest/CoreMatchers;->hasItem(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static hasItem(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "-TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 31
    .local p0, "elementMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0}, Lorg/hamcrest/CoreMatchers;->hasItem(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static varargs hasItems([Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/hamcrest/CoreMatchers;->hasItems([Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static varargs hasItems([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    .local p0, "elementMatchers":[Lorg/hamcrest/Matcher;, "[Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0}, Lorg/hamcrest/CoreMatchers;->hasItems([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static isException(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Exception;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 111
    .local p0, "exceptionMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    invoke-static {p0}, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->isException(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static isThrowable(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 103
    .local p0, "throwableMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    invoke-static {p0}, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->isThrowable(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method
