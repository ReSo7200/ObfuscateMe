.class public Lorg/junit/internal/AssumptionViolatedException;
.super Ljava/lang/RuntimeException;
.source "AssumptionViolatedException.java"

# interfaces
.implements Lorg/hamcrest/SelfDescribing;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final fAssumption:Ljava/lang/String;

.field private final fMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "*>;"
        }
    .end annotation
.end field

.field private final fValue:Ljava/lang/Object;

.field private final fValueMatcher:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/hamcrest/Matcher;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/hamcrest/Matcher<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    .local p2, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/junit/internal/AssumptionViolatedException;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "assumption"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/junit/internal/AssumptionViolatedException;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V
    .locals 1
    .param p1, "assumption"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lorg/hamcrest/Matcher<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    .local p3, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/junit/internal/AssumptionViolatedException;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "assumption"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/junit/internal/AssumptionViolatedException;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 86
    invoke-virtual {p0, p2}, Lorg/junit/internal/AssumptionViolatedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Object;Lorg/hamcrest/Matcher;)V
    .locals 1
    .param p1, "assumption"    # Ljava/lang/String;
    .param p2, "hasValue"    # Z
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Object;",
            "Lorg/hamcrest/Matcher<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    .local p4, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<*>;"
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/junit/internal/AssumptionViolatedException;->fAssumption:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lorg/junit/internal/AssumptionViolatedException;->fValue:Ljava/lang/Object;

    .line 38
    iput-object p4, p0, Lorg/junit/internal/AssumptionViolatedException;->fMatcher:Lorg/hamcrest/Matcher;

    .line 39
    iput-boolean p2, p0, Lorg/junit/internal/AssumptionViolatedException;->fValueMatcher:Z

    .line 41
    instance-of v0, p3, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p3

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lorg/junit/internal/AssumptionViolatedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 44
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "objectOutputStream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 125
    .local v0, "putField":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "fAssumption"

    iget-object v2, p0, Lorg/junit/internal/AssumptionViolatedException;->fAssumption:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    const-string v1, "fValueMatcher"

    iget-boolean v2, p0, Lorg/junit/internal/AssumptionViolatedException;->fValueMatcher:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 129
    iget-object v1, p0, Lorg/junit/internal/AssumptionViolatedException;->fMatcher:Lorg/hamcrest/Matcher;

    invoke-static {v1}, Lorg/junit/internal/SerializableMatcherDescription;->asSerializableMatcher(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v1

    const-string v2, "fMatcher"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    iget-object v1, p0, Lorg/junit/internal/AssumptionViolatedException;->fValue:Ljava/lang/Object;

    invoke-static {v1}, Lorg/junit/internal/SerializableValueDescription;->asSerializableValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fValue"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 138
    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/hamcrest/Description;

    .line 95
    iget-object v0, p0, Lorg/junit/internal/AssumptionViolatedException;->fAssumption:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/junit/internal/AssumptionViolatedException;->fAssumption:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 99
    :cond_0
    iget-boolean v0, p0, Lorg/junit/internal/AssumptionViolatedException;->fValueMatcher:Z

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lorg/junit/internal/AssumptionViolatedException;->fAssumption:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 102
    const-string v0, ": "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 105
    :cond_1
    const-string v0, "got: "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 106
    iget-object v0, p0, Lorg/junit/internal/AssumptionViolatedException;->fValue:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    .line 108
    iget-object v0, p0, Lorg/junit/internal/AssumptionViolatedException;->fMatcher:Lorg/hamcrest/Matcher;

    if-eqz v0, :cond_2

    .line 109
    const-string v0, ", expected: "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 110
    iget-object v0, p0, Lorg/junit/internal/AssumptionViolatedException;->fMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    .line 113
    :cond_2
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 91
    invoke-static {p0}, Lorg/hamcrest/StringDescription;->asString(Lorg/hamcrest/SelfDescribing;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
