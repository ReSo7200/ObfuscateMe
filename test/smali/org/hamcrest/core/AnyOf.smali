.class public Lorg/hamcrest/core/AnyOf;
.super Lorg/hamcrest/core/ShortcutCombination;
.source "AnyOf.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/core/ShortcutCombination<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;>;)V"
        }
    .end annotation

    .line 18
    .local p0, "this":Lorg/hamcrest/core/AnyOf;, "Lorg/hamcrest/core/AnyOf<TT;>;"
    .local p1, "matchers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/hamcrest/Matcher<-TT;>;>;"
    invoke-direct {p0, p1}, Lorg/hamcrest/core/ShortcutCombination;-><init>(Ljava/lang/Iterable;)V

    .line 19
    return-void
.end method

.method public static anyOf(Ljava/lang/Iterable;)Lorg/hamcrest/core/AnyOf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 39
    .local p0, "matchers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/hamcrest/Matcher<-TT;>;>;"
    new-instance v0, Lorg/hamcrest/core/AnyOf;

    invoke-direct {v0, p0}, Lorg/hamcrest/core/AnyOf;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 61
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/hamcrest/Matcher<-TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {v0}, Lorg/hamcrest/core/AnyOf;->anyOf(Ljava/lang/Iterable;)Lorg/hamcrest/core/AnyOf;

    move-result-object v1

    return-object v1
.end method

.method public static anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 75
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p2, "third":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/hamcrest/Matcher<-TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {v0}, Lorg/hamcrest/core/AnyOf;->anyOf(Ljava/lang/Iterable;)Lorg/hamcrest/core/AnyOf;

    move-result-object v1

    return-object v1
.end method

.method public static anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 90
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p2, "third":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p3, "fourth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/hamcrest/Matcher<-TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-static {v0}, Lorg/hamcrest/core/AnyOf;->anyOf(Ljava/lang/Iterable;)Lorg/hamcrest/core/AnyOf;

    move-result-object v1

    return-object v1
.end method

.method public static anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 106
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p2, "third":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p3, "fourth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p4, "fifth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/hamcrest/Matcher<-TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {v0}, Lorg/hamcrest/core/AnyOf;->anyOf(Ljava/lang/Iterable;)Lorg/hamcrest/core/AnyOf;

    move-result-object v1

    return-object v1
.end method

.method public static anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 123
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p2, "third":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p3, "fourth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p4, "fifth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p5, "sixth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/hamcrest/Matcher<-TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {v0}, Lorg/hamcrest/core/AnyOf;->anyOf(Ljava/lang/Iterable;)Lorg/hamcrest/core/AnyOf;

    move-result-object v1

    return-object v1
.end method

.method public static varargs anyOf([Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 50
    .local p0, "matchers":[Lorg/hamcrest/Matcher;, "[Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/hamcrest/core/AnyOf;->anyOf(Ljava/lang/Iterable;)Lorg/hamcrest/core/AnyOf;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/hamcrest/Description;

    .line 28
    .local p0, "this":Lorg/hamcrest/core/AnyOf;, "Lorg/hamcrest/core/AnyOf<TT;>;"
    const-string v0, "or"

    invoke-virtual {p0, p1, v0}, Lorg/hamcrest/core/AnyOf;->describeTo(Lorg/hamcrest/Description;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public bridge synthetic describeTo(Lorg/hamcrest/Description;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Lorg/hamcrest/Description;
    .param p2, "x1"    # Ljava/lang/String;

    .line 15
    .local p0, "this":Lorg/hamcrest/core/AnyOf;, "Lorg/hamcrest/core/AnyOf<TT;>;"
    invoke-super {p0, p1, p2}, Lorg/hamcrest/core/ShortcutCombination;->describeTo(Lorg/hamcrest/Description;Ljava/lang/String;)V

    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 23
    .local p0, "this":Lorg/hamcrest/core/AnyOf;, "Lorg/hamcrest/core/AnyOf<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/hamcrest/core/AnyOf;->matches(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method
