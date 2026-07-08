.class public final synthetic Landroidx/appcompat/view/menu/f52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/q92;

.field public final synthetic n:Landroidx/appcompat/view/menu/ne2;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/q92;Landroidx/appcompat/view/menu/ne2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/f52;->m:Landroidx/appcompat/view/menu/q92;

    iput-object p2, p0, Landroidx/appcompat/view/menu/f52;->n:Landroidx/appcompat/view/menu/ne2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/f52;->m:Landroidx/appcompat/view/menu/q92;

    iget-object v1, p0, Landroidx/appcompat/view/menu/f52;->n:Landroidx/appcompat/view/menu/ne2;

    iget v1, v1, Landroidx/appcompat/view/menu/ne2;->a:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/q92;->e(I)V

    return-void
.end method
