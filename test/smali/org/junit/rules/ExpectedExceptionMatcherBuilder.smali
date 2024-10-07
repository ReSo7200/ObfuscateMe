.class Lorg/junit/rules/ExpectedExceptionMatcherBuilder;
.super Ljava/lang/Object;
.source "ExpectedExceptionMatcherBuilder.java"


# instance fields
.field private final matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hamcrest/Matcher<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    return-void
.end method

.method private allOfTheMatchers()Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hamcrest/Matcher;

    invoke-direct {p0, v0}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->cast(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    invoke-direct {p0}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->castedMatchers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/hamcrest/CoreMatchers;->allOf(Ljava/lang/Iterable;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method private cast(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "*>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 44
    .local p1, "singleMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<*>;"
    return-object p1
.end method

.method private castedMatchers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method add(Lorg/hamcrest/Matcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "*>;)V"
        }
    .end annotation

    .line 19
    .local p1, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<*>;"
    iget-object v0, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method build()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->allOfTheMatchers()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/matchers/JUnitMatchers;->isThrowable(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method expectsThrowable()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
