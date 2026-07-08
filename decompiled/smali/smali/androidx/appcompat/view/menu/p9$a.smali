.class public Landroidx/appcompat/view/menu/p9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/p9;->c(Landroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/wu$c;

.field public final synthetic n:Landroid/graphics/Typeface;

.field public final synthetic o:Landroidx/appcompat/view/menu/p9;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/p9;Landroidx/appcompat/view/menu/wu$c;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/p9$a;->o:Landroidx/appcompat/view/menu/p9;

    iput-object p2, p0, Landroidx/appcompat/view/menu/p9$a;->m:Landroidx/appcompat/view/menu/wu$c;

    iput-object p3, p0, Landroidx/appcompat/view/menu/p9$a;->n:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/p9$a;->m:Landroidx/appcompat/view/menu/wu$c;

    iget-object v1, p0, Landroidx/appcompat/view/menu/p9$a;->n:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/wu$c;->b(Landroid/graphics/Typeface;)V

    return-void
.end method
