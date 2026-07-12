.class public Landroidx/appcompat/view/menu/et$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/et;->j(Landroidx/appcompat/view/menu/nu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/nu;

.field public final synthetic b:Landroidx/appcompat/view/menu/et;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/et;Landroidx/appcompat/view/menu/nu;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/et$b;->b:Landroidx/appcompat/view/menu/et;

    iput-object p2, p0, Landroidx/appcompat/view/menu/et$b;->a:Landroidx/appcompat/view/menu/nu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/et$b;->b:Landroidx/appcompat/view/menu/et;

    invoke-static {v0}, Landroidx/appcompat/view/menu/et;->b(Landroidx/appcompat/view/menu/et;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/et$b;->b:Landroidx/appcompat/view/menu/et;

    iget-object v0, v0, Landroidx/appcompat/view/menu/et;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/et$b;->a:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/et$b;->b:Landroidx/appcompat/view/menu/et;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/view/menu/et;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/et$b;->b:Landroidx/appcompat/view/menu/et;

    invoke-static {v0}, Landroidx/appcompat/view/menu/et;->b(Landroidx/appcompat/view/menu/et;)Z

    move-result v0

    return v0
.end method
