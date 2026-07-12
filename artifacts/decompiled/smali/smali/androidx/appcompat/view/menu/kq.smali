.class public final Landroidx/appcompat/view/menu/kq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/b81;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/pf;)V
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/kq;->d(Landroidx/appcompat/view/menu/pf;)V

    return-void
.end method

.method public static final d(Landroidx/appcompat/view/menu/pf;)V
    .locals 2

    const-string v0, "$callback"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/appcompat/view/menu/y91;

    invoke-static {}, Landroidx/appcompat/view/menu/qc;->e()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/y91;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Landroidx/appcompat/view/menu/pf;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/pf;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "executor"

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p3, p1}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/appcompat/view/menu/jq;

    invoke-direct {p1, p3}, Landroidx/appcompat/view/menu/jq;-><init>(Landroidx/appcompat/view/menu/pf;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/pf;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
