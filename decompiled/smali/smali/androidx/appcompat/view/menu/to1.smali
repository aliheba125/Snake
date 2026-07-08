.class public final Landroidx/appcompat/view/menu/to1;
.super Landroidx/appcompat/view/menu/mn1$a;
.source "SourceFile"


# instance fields
.field public final synthetic q:Landroidx/appcompat/view/menu/bm1;

.field public final synthetic r:Landroidx/appcompat/view/menu/mn1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mn1;Landroidx/appcompat/view/menu/bm1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/to1;->r:Landroidx/appcompat/view/menu/mn1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/to1;->q:Landroidx/appcompat/view/menu/bm1;

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/mn1$a;-><init>(Landroidx/appcompat/view/menu/mn1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/to1;->r:Landroidx/appcompat/view/menu/mn1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mn1;->d(Landroidx/appcompat/view/menu/mn1;)Landroidx/appcompat/view/menu/fm1;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/fm1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/to1;->q:Landroidx/appcompat/view/menu/bm1;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/fm1;->generateEventId(Landroidx/appcompat/view/menu/hm1;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/to1;->q:Landroidx/appcompat/view/menu/bm1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/bm1;->f(Landroid/os/Bundle;)V

    return-void
.end method
