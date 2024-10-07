.class public Lorg/junit/Assume;
.super Ljava/lang/Object;
.source "Assume.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static assumeFalse(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "b"    # Z

    .line 75
    xor-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Lorg/junit/Assume;->assumeTrue(Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public static assumeFalse(Z)V
    .locals 2
    .param p0, "b"    # Z

    .line 57
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lorg/hamcrest/CoreMatchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/junit/Assume;->assumeThat(Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 58
    return-void
.end method

.method public static assumeNoException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 167
    invoke-static {}, Lorg/hamcrest/CoreMatchers;->nullValue()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/junit/Assume;->assumeThat(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 168
    return-void
.end method

.method public static assumeNoException(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 153
    invoke-static {}, Lorg/hamcrest/CoreMatchers;->nullValue()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/junit/Assume;->assumeThat(Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 154
    return-void
.end method

.method public static varargs assumeNotNull([Ljava/lang/Object;)V
    .locals 2
    .param p0, "objects"    # [Ljava/lang/Object;

    .line 83
    invoke-static {}, Lorg/hamcrest/CoreMatchers;->notNullValue()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/junit/Assume;->assumeThat(Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 84
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lorg/hamcrest/CoreMatchers;->notNullValue()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v1}, Lorg/hamcrest/CoreMatchers;->everyItem(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/junit/Assume;->assumeThat(Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 85
    return-void
.end method

.method public static assumeThat(Ljava/lang/Object;Lorg/hamcrest/Matcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 105
    .local p0, "actual":Ljava/lang/Object;, "TT;"
    .local p1, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    invoke-interface {p1, p0}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    return-void

    .line 106
    :cond_0
    new-instance v0, Lorg/junit/AssumptionViolatedException;

    invoke-direct {v0, p0, p1}, Lorg/junit/AssumptionViolatedException;-><init>(Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    throw v0
.end method

.method public static assumeThat(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 128
    .local p1, "actual":Ljava/lang/Object;, "TT;"
    .local p2, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    invoke-interface {p2, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    return-void

    .line 129
    :cond_0
    new-instance v0, Lorg/junit/AssumptionViolatedException;

    invoke-direct {v0, p0, p1, p2}, Lorg/junit/AssumptionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    throw v0
.end method

.method public static assumeTrue(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "b"    # Z

    .line 68
    if-eqz p1, :cond_0

    .line 69
    return-void

    .line 68
    :cond_0
    new-instance v0, Lorg/junit/AssumptionViolatedException;

    invoke-direct {v0, p0}, Lorg/junit/AssumptionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static assumeTrue(Z)V
    .locals 2
    .param p0, "b"    # Z

    .line 50
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lorg/hamcrest/CoreMatchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/junit/Assume;->assumeThat(Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 51
    return-void
.end method
