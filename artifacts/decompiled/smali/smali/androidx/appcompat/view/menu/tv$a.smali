.class public Landroidx/appcompat/view/menu/tv$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/tv;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroidx/appcompat/view/menu/tv;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/tv;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/tv$a;->b:Landroidx/appcompat/view/menu/tv;

    iput-object p2, p0, Landroidx/appcompat/view/menu/tv$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/view/menu/tv$a;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/tv$a;->a:Landroid/view/View;

    invoke-static {p1}, Landroidx/appcompat/view/menu/m51;->h0(Landroid/view/View;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
