.class public Landroidx/appcompat/view/menu/mi0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/mi0;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroidx/appcompat/view/menu/mi0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mi0;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/mi0$b;->b:Landroidx/appcompat/view/menu/mi0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/mi0$b;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/mi0$b;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mi0$b;->b(I)V

    return-void
.end method


# virtual methods
.method public final synthetic b(I)V
    .locals 1

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/mi0$b;->b:Landroidx/appcompat/view/menu/mi0;

    invoke-static {p1}, Landroidx/appcompat/view/menu/mi0;->g(Landroidx/appcompat/view/menu/mi0;)Landroidx/appcompat/view/menu/fi0;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/fi0;->m(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/mi0$b;->b:Landroidx/appcompat/view/menu/mi0;

    invoke-static {p1}, Landroidx/appcompat/view/menu/mi0;->g(Landroidx/appcompat/view/menu/mi0;)Landroidx/appcompat/view/menu/fi0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/fi0;->m(Z)V

    :goto_0
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mi0$b;->a:Landroid/view/View;

    new-instance v1, Landroidx/appcompat/view/menu/ni0;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/ni0;-><init>(Landroidx/appcompat/view/menu/mi0$b;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
