.class public final Landroidx/window/layout/adapter/sidecar/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/adapter/sidecar/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Landroidx/appcompat/view/menu/pf;

.field public d:Landroidx/appcompat/view/menu/y91;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/pf;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/b$c;->a:Landroid/app/Activity;

    iput-object p2, p0, Landroidx/window/layout/adapter/sidecar/b$c;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/window/layout/adapter/sidecar/b$c;->c:Landroidx/appcompat/view/menu/pf;

    return-void
.end method

.method public static synthetic a(Landroidx/window/layout/adapter/sidecar/b$c;Landroidx/appcompat/view/menu/y91;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/window/layout/adapter/sidecar/b$c;->c(Landroidx/window/layout/adapter/sidecar/b$c;Landroidx/appcompat/view/menu/y91;)V

    return-void
.end method

.method public static final c(Landroidx/window/layout/adapter/sidecar/b$c;Landroidx/appcompat/view/menu/y91;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newLayoutInfo"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/b$c;->c:Landroidx/appcompat/view/menu/pf;

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/pf;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/appcompat/view/menu/y91;)V
    .locals 2

    const-string v0, "newLayoutInfo"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/b$c;->d:Landroidx/appcompat/view/menu/y91;

    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/b$c;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/appcompat/view/menu/ju0;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/ju0;-><init>(Landroidx/window/layout/adapter/sidecar/b$c;Landroidx/appcompat/view/menu/y91;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/b$c;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final e()Landroidx/appcompat/view/menu/pf;
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/b$c;->c:Landroidx/appcompat/view/menu/pf;

    return-object v0
.end method

.method public final f()Landroidx/appcompat/view/menu/y91;
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/b$c;->d:Landroidx/appcompat/view/menu/y91;

    return-object v0
.end method
