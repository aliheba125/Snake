.class public final synthetic Landroidx/appcompat/view/menu/gp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/fp0$e;

.field public final synthetic n:Landroid/graphics/Typeface;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/fp0$e;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/gp0;->m:Landroidx/appcompat/view/menu/fp0$e;

    iput-object p2, p0, Landroidx/appcompat/view/menu/gp0;->n:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/gp0;->m:Landroidx/appcompat/view/menu/fp0$e;

    iget-object v1, p0, Landroidx/appcompat/view/menu/gp0;->n:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/fp0$e;->b(Landroidx/appcompat/view/menu/fp0$e;Landroid/graphics/Typeface;)V

    return-void
.end method
