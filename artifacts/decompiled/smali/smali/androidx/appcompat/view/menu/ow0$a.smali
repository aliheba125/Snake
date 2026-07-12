.class public Landroidx/appcompat/view/menu/ow0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ow0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/ow0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ow0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ow0$a;->a:Landroidx/appcompat/view/menu/ow0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ow0$a;->a:Landroidx/appcompat/view/menu/ow0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ow0;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ow0$a;->a:Landroidx/appcompat/view/menu/ow0;

    iget-object v0, v0, Landroidx/appcompat/view/menu/ow0;->i:Landroidx/appcompat/view/menu/tc0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h90;->n()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ow0$a;->a:Landroidx/appcompat/view/menu/ow0;

    iget-object v0, v0, Landroidx/appcompat/view/menu/ow0;->n:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ow0$a;->a:Landroidx/appcompat/view/menu/ow0;

    iget-object v0, v0, Landroidx/appcompat/view/menu/ow0;->i:Landroidx/appcompat/view/menu/tc0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h90;->a()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ow0$a;->a:Landroidx/appcompat/view/menu/ow0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ow0;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method
