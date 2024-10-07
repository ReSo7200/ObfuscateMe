.class Lorg/junit/internal/SerializableMatcherDescription;
.super Lorg/hamcrest/BaseMatcher;
.source "SerializableMatcherDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/BaseMatcher<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final matcherDescription:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/hamcrest/Matcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 22
    .local p0, "this":Lorg/junit/internal/SerializableMatcherDescription;, "Lorg/junit/internal/SerializableMatcherDescription<TT;>;"
    .local p1, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    invoke-direct {p0}, Lorg/hamcrest/BaseMatcher;-><init>()V

    .line 23
    invoke-static {p1}, Lorg/hamcrest/StringDescription;->asString(Lorg/hamcrest/SelfDescribing;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/SerializableMatcherDescription;->matcherDescription:Ljava/lang/String;

    .line 24
    return-void
.end method

.method static asSerializableMatcher(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 41
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    if-eqz p0, :cond_1

    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lorg/junit/internal/SerializableMatcherDescription;

    invoke-direct {v0, p0}, Lorg/junit/internal/SerializableMatcherDescription;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0

    .line 42
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/hamcrest/Description;

    .line 31
    .local p0, "this":Lorg/junit/internal/SerializableMatcherDescription;, "Lorg/junit/internal/SerializableMatcherDescription<TT;>;"
    iget-object v0, p0, Lorg/junit/internal/SerializableMatcherDescription;->matcherDescription:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 32
    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 27
    .local p0, "this":Lorg/junit/internal/SerializableMatcherDescription;, "Lorg/junit/internal/SerializableMatcherDescription<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This Matcher implementation only captures the description"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
