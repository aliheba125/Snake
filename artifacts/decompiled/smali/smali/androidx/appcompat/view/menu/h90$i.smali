.class public Landroidx/appcompat/view/menu/h90$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/h90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/h90;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/h90;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/h90$i;->m:Landroidx/appcompat/view/menu/h90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90$i;->m:Landroidx/appcompat/view/menu/h90;

    iget-object v0, v0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90$i;->m:Landroidx/appcompat/view/menu/h90;

    iget-object v0, v0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/h90$i;->m:Landroidx/appcompat/view/menu/h90;

    iget-object v1, v1, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90$i;->m:Landroidx/appcompat/view/menu/h90;

    iget-object v0, v0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/h90$i;->m:Landroidx/appcompat/view/menu/h90;

    iget v2, v1, Landroidx/appcompat/view/menu/h90;->o:I

    if-gt v0, v2, :cond_0

    iget-object v0, v1, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90$i;->m:Landroidx/appcompat/view/menu/h90;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h90;->a()V

    :cond_0
    return-void
.end method
