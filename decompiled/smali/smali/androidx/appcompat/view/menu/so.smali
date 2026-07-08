.class public final synthetic Landroidx/appcompat/view/menu/so;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Lcom/Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/so;->m:Lcom/Entry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/so;->m:Lcom/Entry;

    invoke-static {v0}, Lcom/Entry;->Y(Lcom/Entry;)V

    return-void
.end method
