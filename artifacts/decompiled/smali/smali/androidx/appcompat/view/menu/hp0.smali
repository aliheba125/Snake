.class public final synthetic Landroidx/appcompat/view/menu/hp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/fp0$e;

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/fp0$e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/hp0;->m:Landroidx/appcompat/view/menu/fp0$e;

    iput p2, p0, Landroidx/appcompat/view/menu/hp0;->n:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/hp0;->m:Landroidx/appcompat/view/menu/fp0$e;

    iget v1, p0, Landroidx/appcompat/view/menu/hp0;->n:I

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/fp0$e;->a(Landroidx/appcompat/view/menu/fp0$e;I)V

    return-void
.end method
