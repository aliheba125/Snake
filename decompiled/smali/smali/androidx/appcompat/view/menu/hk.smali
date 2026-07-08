.class public final synthetic Landroidx/appcompat/view/menu/hk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/aw;

.field public final synthetic n:Landroid/view/View;

.field public final synthetic o:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/aw;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/hk;->m:Landroidx/appcompat/view/menu/aw;

    iput-object p2, p0, Landroidx/appcompat/view/menu/hk;->n:Landroid/view/View;

    iput-object p3, p0, Landroidx/appcompat/view/menu/hk;->o:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/hk;->m:Landroidx/appcompat/view/menu/aw;

    iget-object v1, p0, Landroidx/appcompat/view/menu/hk;->n:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/view/menu/hk;->o:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/ck$g;->i(Landroidx/appcompat/view/menu/aw;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
