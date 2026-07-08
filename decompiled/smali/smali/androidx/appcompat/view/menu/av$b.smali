.class public Landroidx/appcompat/view/menu/av$b;
.super Landroidx/appcompat/view/menu/av$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/av;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/av;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/av$b;->a:Landroidx/appcompat/view/menu/av;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/av$f;-><init>(Landroidx/appcompat/view/menu/av$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/av$b;->a:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->V:Landroidx/appcompat/view/menu/qr0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qr0;->c()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/av$b;->a:Landroidx/appcompat/view/menu/av;

    invoke-static {v0}, Landroidx/lifecycle/p;->a(Landroidx/appcompat/view/menu/rr0;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/av$b;->a:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "registryState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/av$b;->a:Landroidx/appcompat/view/menu/av;

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->V:Landroidx/appcompat/view/menu/qr0;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/qr0;->d(Landroid/os/Bundle;)V

    return-void
.end method
