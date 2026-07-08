.class public final synthetic Landroidx/appcompat/view/menu/dn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/fn;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/fn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/dn;->a:Landroidx/appcompat/view/menu/fn;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/dn;->a:Landroidx/appcompat/view/menu/fn;

    invoke-static {v0, p1, p2}, Landroidx/appcompat/view/menu/fn;->w(Landroidx/appcompat/view/menu/fn;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
