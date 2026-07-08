.class public Landroidx/appcompat/view/menu/p9$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/p9;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/wu$c;

.field public final synthetic n:I

.field public final synthetic o:Landroidx/appcompat/view/menu/p9;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/p9;Landroidx/appcompat/view/menu/wu$c;I)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/p9$b;->o:Landroidx/appcompat/view/menu/p9;

    iput-object p2, p0, Landroidx/appcompat/view/menu/p9$b;->m:Landroidx/appcompat/view/menu/wu$c;

    iput p3, p0, Landroidx/appcompat/view/menu/p9$b;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/p9$b;->m:Landroidx/appcompat/view/menu/wu$c;

    iget v1, p0, Landroidx/appcompat/view/menu/p9$b;->n:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/wu$c;->a(I)V

    return-void
.end method
