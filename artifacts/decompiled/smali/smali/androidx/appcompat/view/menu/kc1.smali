.class public final Landroidx/appcompat/view/menu/kc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/ld1;

.field public final synthetic n:Landroidx/appcompat/view/menu/mc1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mc1;Landroidx/appcompat/view/menu/ld1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/kc1;->n:Landroidx/appcompat/view/menu/mc1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/kc1;->m:Landroidx/appcompat/view/menu/ld1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/kc1;->n:Landroidx/appcompat/view/menu/mc1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/kc1;->m:Landroidx/appcompat/view/menu/ld1;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/mc1;->w2(Landroidx/appcompat/view/menu/mc1;Landroidx/appcompat/view/menu/ld1;)V

    return-void
.end method
