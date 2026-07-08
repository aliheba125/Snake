.class public final Landroidx/appcompat/view/menu/c92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/ba2;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/o82;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o82;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/c92;->a:Landroidx/appcompat/view/menu/o82;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final l(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/c92;->a:Landroidx/appcompat/view/menu/o82;

    invoke-static {p1}, Landroidx/appcompat/view/menu/o82;->i(Landroidx/appcompat/view/menu/o82;)Landroidx/appcompat/view/menu/cx1;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/c92;->a:Landroidx/appcompat/view/menu/o82;

    invoke-static {p1}, Landroidx/appcompat/view/menu/o82;->i(Landroidx/appcompat/view/menu/o82;)Landroidx/appcompat/view/menu/cx1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p3, "AppId not known when logging event"

    invoke-virtual {p1, p3, p2}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/c92;->a:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/a92;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/appcompat/view/menu/a92;-><init>(Landroidx/appcompat/view/menu/c92;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
