.class public Lorg/hamcrest/core/AllOf;
.super Lorg/hamcrest/DiagnosingMatcher;
.source "AllOf.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/DiagnosingMatcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final matchers:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;>;"
        }
    .end annotation
.end field


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

    .line 20
    .local p0, "this":Lorg/hamcrest/core/AllOf;, "Lorg/hamcrest/core/AllOf<TT;>;"
    .local p1, "matchers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/hamcrest/Matcher<-TT;>;>;"
    invoke-direct {p0}, Lorg/hamcrest/DiagnosingMatcher;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/hamcrest/core/AllOf;->matchers:Ljava/lang/Iterable;

    .line 22
    return-void
.end method

.method public static allOf(Ljava/lang/Iterable;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 49
    .local p0, "matchers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/hamcrest/Matcher<-TT;>;>;"
    new-instance v0, Lorg/hamcrest/core/AllOf;

    invoke-direct {v0, p0}, Lorg/hamcrest/core/AllOf;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 71
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .local v0, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/hamcrest/Matcher<-TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-static {v0}, Lorg/hamcrest/core/AllOf;->allOf(Ljava/lang/Iterable;)Lorg/hamcrest/Matcher;

    move-result-object v1

    return-object v1
.end method

.method public static allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 85
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p2, "third":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .local v0, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/hamcrest/Matcher<-TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {v0}, Lorg/hamcrest/core/AllOf;->allOf(Ljava/lang/Iterable;)Lorg/hamcrest/Matcher;

    move-result-object v1

    return-object v1
.end method

.method public static allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 100
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p2, "third":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p3, "fourth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v0, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/hamcrest/Matcher<-TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {v0}, Lorg/hamcrest/core/AllOf;->allOf(Ljava/lang/Iterable;)Lorg/hamcrest/Matcher;

    move-result-object v1

    return-object v1
.end method

.method public static allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 116
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p2, "third":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p3, "fourth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p4, "fifth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .local v0, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/hamcrest/Matcher<-TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {v0}, Lorg/hamcrest/core/AllOf;->allOf(Ljava/lang/Iterable;)Lorg/hamcrest/Matcher;

    move-result-object v1

    return-object v1
.end method

.method public static allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
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
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 133
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p2, "third":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p3, "fourth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p4, "fifth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p5, "sixth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 134
    .local v0, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/hamcrest/Matcher<-TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {v0}, Lorg/hamcrest/core/AllOf;->allOf(Ljava/lang/Iterable;)Lorg/hamcrest/Matcher;

    move-result-object v1

    return-object v1
.end method

.method public static varargs allOf([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 60
    .local p0, "matchers":[Lorg/hamcrest/Matcher;, "[Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/hamcrest/core/AllOf;->allOf(Ljava/lang/Iterable;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 4
    .param p1, "description"    # Lorg/hamcrest/Description;

    .line 38
    .local p0, "this":Lorg/hamcrest/core/AllOf;, "Lorg/hamcrest/core/AllOf<TT;>;"
    const-string v0, ")"

    iget-object v1, p0, Lorg/hamcrest/core/AllOf;->matchers:Ljava/lang/Iterable;

    const-string v2, "("

    const-string v3, " and "

    invoke-interface {p1, v2, v3, v0, v1}, Lorg/hamcrest/Description;->appendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/hamcrest/Description;

    .line 39
    return-void
.end method

.method public matches(Ljava/lang/Object;Lorg/hamcrest/Description;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "mismatch"    # Lorg/hamcrest/Description;

    .line 26
    .local p0, "this":Lorg/hamcrest/core/AllOf;, "Lorg/hamcrest/core/AllOf<TT;>;"
    iget-object v0, p0, Lorg/hamcrest/core/AllOf;->matchers:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hamcrest/Matcher;

    .line 27
    .local v1, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-interface {v1, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    invoke-interface {p2, v1}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    move-result-object v2

    const-string v3, " "

    invoke-interface {v2, v3}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 29
    invoke-interface {v1, p1, p2}, Lorg/hamcrest/Matcher;->describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V

    .line 30
    const/4 v2, 0x0

    return v2

    .end local v1    # "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    :cond_0
    goto :goto_0

    .line 33
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
