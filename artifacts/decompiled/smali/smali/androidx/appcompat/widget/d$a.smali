.class public Landroidx/appcompat/widget/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/d;-><init>(Landroidx/appcompat/widget/Toolbar;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/x0;

.field public final synthetic b:Landroidx/appcompat/widget/d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/d;)V
    .locals 8

    iput-object p1, p0, Landroidx/appcompat/widget/d$a;->b:Landroidx/appcompat/widget/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Landroidx/appcompat/view/menu/x0;

    iget-object v0, p1, Landroidx/appcompat/widget/d;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p1, Landroidx/appcompat/widget/d;->h:Ljava/lang/CharSequence;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/x0;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Landroidx/appcompat/widget/d$a;->a:Landroidx/appcompat/view/menu/x0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Landroidx/appcompat/widget/d$a;->b:Landroidx/appcompat/widget/d;

    iget-object v0, p1, Landroidx/appcompat/widget/d;->k:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Landroidx/appcompat/widget/d;->l:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iget-object v1, p0, Landroidx/appcompat/widget/d$a;->a:Landroidx/appcompat/view/menu/x0;

    invoke-interface {v0, p1, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
