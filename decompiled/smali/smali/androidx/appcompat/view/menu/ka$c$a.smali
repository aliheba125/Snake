.class public Landroidx/appcompat/view/menu/ka$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/ka$c;->b(Landroidx/appcompat/view/menu/mc0;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/ka$d;

.field public final synthetic n:Landroid/view/MenuItem;

.field public final synthetic o:Landroidx/appcompat/view/menu/mc0;

.field public final synthetic p:Landroidx/appcompat/view/menu/ka$c;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ka$c;Landroidx/appcompat/view/menu/ka$d;Landroid/view/MenuItem;Landroidx/appcompat/view/menu/mc0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ka$c$a;->p:Landroidx/appcompat/view/menu/ka$c;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ka$c$a;->m:Landroidx/appcompat/view/menu/ka$d;

    iput-object p3, p0, Landroidx/appcompat/view/menu/ka$c$a;->n:Landroid/view/MenuItem;

    iput-object p4, p0, Landroidx/appcompat/view/menu/ka$c$a;->o:Landroidx/appcompat/view/menu/mc0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ka$c$a;->m:Landroidx/appcompat/view/menu/ka$d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ka$c$a;->p:Landroidx/appcompat/view/menu/ka$c;

    iget-object v1, v1, Landroidx/appcompat/view/menu/ka$c;->a:Landroidx/appcompat/view/menu/ka;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/view/menu/ka;->A:Z

    iget-object v0, v0, Landroidx/appcompat/view/menu/ka$d;->b:Landroidx/appcompat/view/menu/mc0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/mc0;->d(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ka$c$a;->p:Landroidx/appcompat/view/menu/ka$c;

    iget-object v0, v0, Landroidx/appcompat/view/menu/ka$c;->a:Landroidx/appcompat/view/menu/ka;

    iput-boolean v1, v0, Landroidx/appcompat/view/menu/ka;->A:Z

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ka$c$a;->n:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ka$c$a;->n:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ka$c$a;->o:Landroidx/appcompat/view/menu/mc0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ka$c$a;->n:Landroid/view/MenuItem;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/mc0;->I(Landroid/view/MenuItem;I)Z

    :cond_1
    return-void
.end method
