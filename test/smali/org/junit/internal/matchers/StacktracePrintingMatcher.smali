.class public Lorg/junit/internal/matchers/StacktracePrintingMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "StacktracePrintingMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Throwable;",
        ">",
        "Lorg/hamcrest/TypeSafeMatcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final throwableMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 18
    .local p0, "this":Lorg/junit/internal/matchers/StacktracePrintingMatcher;, "Lorg/junit/internal/matchers/StacktracePrintingMatcher<TT;>;"
    .local p1, "throwableMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->throwableMatcher:Lorg/hamcrest/Matcher;

    .line 20
    return-void
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

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 51
    .local p0, "exceptionMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    new-instance v0, Lorg/junit/internal/matchers/StacktracePrintingMatcher;

    invoke-direct {v0, p0}, Lorg/junit/internal/matchers/StacktracePrintingMatcher;-><init>(Lorg/hamcrest/Matcher;)V

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

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 45
    .local p0, "throwableMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    new-instance v0, Lorg/junit/internal/matchers/StacktracePrintingMatcher;

    invoke-direct {v0, p0}, Lorg/junit/internal/matchers/StacktracePrintingMatcher;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method private readStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 39
    .local p0, "this":Lorg/junit/internal/matchers/StacktracePrintingMatcher;, "Lorg/junit/internal/matchers/StacktracePrintingMatcher<TT;>;"
    invoke-static {p1}, Lorg/junit/internal/Throwables;->getStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic describeMismatchSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/hamcrest/Description;

    .line 13
    .local p0, "this":Lorg/junit/internal/matchers/StacktracePrintingMatcher;, "Lorg/junit/internal/matchers/StacktracePrintingMatcher<TT;>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, p2}, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->describeMismatchSafely(Ljava/lang/Throwable;Lorg/hamcrest/Description;)V

    return-void
.end method

.method protected describeMismatchSafely(Ljava/lang/Throwable;Lorg/hamcrest/Description;)V
    .locals 1
    .param p2, "description"    # Lorg/hamcrest/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/hamcrest/Description;",
            ")V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lorg/junit/internal/matchers/StacktracePrintingMatcher;, "Lorg/junit/internal/matchers/StacktracePrintingMatcher<TT;>;"
    .local p1, "item":Ljava/lang/Throwable;, "TT;"
    iget-object v0, p0, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->throwableMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1, p2}, Lorg/hamcrest/Matcher;->describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V

    .line 34
    const-string v0, "\nStacktrace was: "

    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 35
    invoke-direct {p0, p1}, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->readStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 36
    return-void
.end method

.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/hamcrest/Description;

    .line 23
    .local p0, "this":Lorg/junit/internal/matchers/StacktracePrintingMatcher;, "Lorg/junit/internal/matchers/StacktracePrintingMatcher<TT;>;"
    iget-object v0, p0, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->throwableMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 24
    return-void
.end method

.method protected bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 13
    .local p0, "this":Lorg/junit/internal/matchers/StacktracePrintingMatcher;, "Lorg/junit/internal/matchers/StacktracePrintingMatcher<TT;>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->matchesSafely(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method protected matchesSafely(Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 28
    .local p0, "this":Lorg/junit/internal/matchers/StacktracePrintingMatcher;, "Lorg/junit/internal/matchers/StacktracePrintingMatcher<TT;>;"
    .local p1, "item":Ljava/lang/Throwable;, "TT;"
    iget-object v0, p0, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->throwableMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
