.class public final synthetic Landroidx/appcompat/view/menu/ni0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/mi0$b;

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/mi0$b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ni0;->m:Landroidx/appcompat/view/menu/mi0$b;

    iput p2, p0, Landroidx/appcompat/view/menu/ni0;->n:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ni0;->m:Landroidx/appcompat/view/menu/mi0$b;

    iget v1, p0, Landroidx/appcompat/view/menu/ni0;->n:I

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/mi0$b;->a(Landroidx/appcompat/view/menu/mi0$b;I)V

    return-void
.end method
