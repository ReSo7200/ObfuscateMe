.class public final Landroidx/test/ext/junit/rules/AppComponentFactoryRule;
.super Lorg/junit/rules/ExternalResource;
.source "AppComponentFactoryRule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0014J\u0008\u0010\u0007\u001a\u00020\u0006H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/test/ext/junit/rules/AppComponentFactoryRule;",
        "Lorg/junit/rules/ExternalResource;",
        "factory",
        "Landroid/app/AppComponentFactory;",
        "(Landroid/app/AppComponentFactory;)V",
        "after",
        "",
        "before",
        "ext_junit_java_androidx_test_ext_junit-junit_kt"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final factory:Landroid/app/AppComponentFactory;


# direct methods
.method public constructor <init>(Landroid/app/AppComponentFactory;)V
    .locals 1
    .param p1, "factory"    # Landroid/app/AppComponentFactory;

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    iput-object p1, p0, Landroidx/test/ext/junit/rules/AppComponentFactoryRule;->factory:Landroid/app/AppComponentFactory;

    return-void
.end method


# virtual methods
.method protected after()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/test/platform/app/AppComponentFactoryRegistry;->setAppComponentFactory(Landroid/app/AppComponentFactory;)V

    .line 54
    return-void
.end method

.method protected before()V
    .locals 2

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Landroidx/test/ext/junit/rules/AppComponentFactoryRule;->factory:Landroid/app/AppComponentFactory;

    invoke-static {v0}, Landroidx/test/platform/app/AppComponentFactoryRegistry;->setAppComponentFactory(Landroid/app/AppComponentFactory;)V

    .line 50
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    .local v0, "$i$a$-check-AppComponentFactoryRule$before$1":I
    nop

    .line 46
    .end local v0    # "$i$a$-check-AppComponentFactoryRule$before$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppComponentFactoryRule is not supported on \'VERSION.SDK_INT < VERSION_CODES.P\'"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
