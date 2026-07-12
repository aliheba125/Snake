.class public Landroidx/appcompat/view/menu/fu$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/fu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/fu;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/fu;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/fu$a;->a:Landroidx/appcompat/view/menu/fu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p1, "FlutterSurfaceView"

    const-string p2, "SurfaceHolder.Callback.surfaceChanged()"

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/fu$a;->a:Landroidx/appcompat/view/menu/fu;

    invoke-static {p1}, Landroidx/appcompat/view/menu/fu;->f(Landroidx/appcompat/view/menu/fu;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/fu$a;->a:Landroidx/appcompat/view/menu/fu;

    invoke-static {p1, p3, p4}, Landroidx/appcompat/view/menu/fu;->h(Landroidx/appcompat/view/menu/fu;II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "FlutterSurfaceView"

    const-string v0, "SurfaceHolder.Callback.startRenderingToSurface()"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/fu$a;->a:Landroidx/appcompat/view/menu/fu;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/fu;->e(Landroidx/appcompat/view/menu/fu;Z)Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/fu$a;->a:Landroidx/appcompat/view/menu/fu;

    invoke-static {p1}, Landroidx/appcompat/view/menu/fu;->f(Landroidx/appcompat/view/menu/fu;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/fu$a;->a:Landroidx/appcompat/view/menu/fu;

    invoke-static {p1}, Landroidx/appcompat/view/menu/fu;->g(Landroidx/appcompat/view/menu/fu;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "FlutterSurfaceView"

    const-string v0, "SurfaceHolder.Callback.stopRenderingToSurface()"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/fu$a;->a:Landroidx/appcompat/view/menu/fu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/fu;->e(Landroidx/appcompat/view/menu/fu;Z)Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/fu$a;->a:Landroidx/appcompat/view/menu/fu;

    invoke-static {p1}, Landroidx/appcompat/view/menu/fu;->f(Landroidx/appcompat/view/menu/fu;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/fu$a;->a:Landroidx/appcompat/view/menu/fu;

    invoke-static {p1}, Landroidx/appcompat/view/menu/fu;->i(Landroidx/appcompat/view/menu/fu;)V

    :cond_0
    return-void
.end method
