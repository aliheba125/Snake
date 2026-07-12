.class public Landroidx/appcompat/widget/Toolbar$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/mc0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/Toolbar;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$c;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/mc0;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$c;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->N:Landroidx/appcompat/view/menu/mc0$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/mc0$a;->a(Landroidx/appcompat/view/menu/mc0;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Landroidx/appcompat/view/menu/mc0;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$c;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->F()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$c;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->G:Landroidx/appcompat/view/menu/nc0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/nc0;->c(Landroid/view/Menu;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$c;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->N:Landroidx/appcompat/view/menu/mc0$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/mc0$a;->b(Landroidx/appcompat/view/menu/mc0;)V

    :cond_1
    return-void
.end method
