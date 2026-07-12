.class public final Landroidx/appcompat/view/menu/qb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:I

.field public final synthetic n:Landroidx/appcompat/view/menu/tb1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/tb1;I)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/qb1;->n:Landroidx/appcompat/view/menu/tb1;

    iput p2, p0, Landroidx/appcompat/view/menu/qb1;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/qb1;->n:Landroidx/appcompat/view/menu/tb1;

    iget v1, p0, Landroidx/appcompat/view/menu/qb1;->m:I

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/tb1;->z(Landroidx/appcompat/view/menu/tb1;I)V

    return-void
.end method
