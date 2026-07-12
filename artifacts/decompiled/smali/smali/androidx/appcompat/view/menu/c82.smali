.class public final Landroidx/appcompat/view/menu/c82;
.super Landroidx/appcompat/view/menu/m82;
.source "SourceFile"


# instance fields
.field public final d:Landroid/app/AlarmManager;

.field public e:Landroidx/appcompat/view/menu/bh1;

.field public f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o82;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/m82;-><init>(Landroidx/appcompat/view/menu/o82;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Landroidx/appcompat/view/menu/c82;->d:Landroid/app/AlarmManager;

    return-void
.end method

.method private final D()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/c82;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A()I
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/c82;->f:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "measurement"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/c82;->f:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/c82;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final B()Landroid/app/PendingIntent;
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/view/menu/wk1;->b:I

    invoke-static {v0, v2, v1, v3}, Landroidx/appcompat/view/menu/wk1;->a(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public final C()Landroidx/appcompat/view/menu/bh1;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/c82;->e:Landroidx/appcompat/view/menu/bh1;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/i82;

    iget-object v1, p0, Landroidx/appcompat/view/menu/g82;->b:Landroidx/appcompat/view/menu/o82;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o82;->i0()Landroidx/appcompat/view/menu/cx1;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/i82;-><init>(Landroidx/appcompat/view/menu/c82;Landroidx/appcompat/view/menu/iz1;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/c82;->e:Landroidx/appcompat/view/menu/bh1;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/c82;->e:Landroidx/appcompat/view/menu/bh1;

    return-object v0
.end method

.method public final bridge synthetic a()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Landroidx/appcompat/view/menu/cc;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Landroidx/appcompat/view/menu/mf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->d()Landroidx/appcompat/view/menu/mf1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Landroidx/appcompat/view/menu/qf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Landroidx/appcompat/view/menu/ci1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->f()Landroidx/appcompat/view/menu/ci1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Landroidx/appcompat/view/menu/mt1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->g()Landroidx/appcompat/view/menu/mt1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Landroidx/appcompat/view/menu/jw1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Landroidx/appcompat/view/menu/tu1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Landroidx/appcompat/view/menu/x92;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->k()V

    return-void
.end method

.method public final bridge synthetic l()Landroidx/appcompat/view/menu/pt1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    return-void
.end method

.method public final bridge synthetic o()Landroidx/appcompat/view/menu/i92;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/g82;->o()Landroidx/appcompat/view/menu/i92;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Landroidx/appcompat/view/menu/we2;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/g82;->p()Landroidx/appcompat/view/menu/we2;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Landroidx/appcompat/view/menu/lg1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Landroidx/appcompat/view/menu/rv1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/g82;->r()Landroidx/appcompat/view/menu/rv1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Landroidx/appcompat/view/menu/p62;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/g82;->s()Landroidx/appcompat/view/menu/p62;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Landroidx/appcompat/view/menu/k82;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/g82;->t()Landroidx/appcompat/view/menu/k82;

    move-result-object v0

    return-object v0
.end method

.method public final x()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/c82;->d:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/c82;->B()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/view/menu/c82;->D()V

    const/4 v0, 0x0

    return v0
.end method

.method public final y(J)V
    .locals 6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m82;->u()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/x92;->c0(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Receiver not registered/enabled"

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/x92;->d0(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Service not registered/enabled"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/c82;->z()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Scheduling upload, millis"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cc;->b()J

    sget-object v0, Landroidx/appcompat/view/menu/si1;->z:Landroidx/appcompat/view/menu/us1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/c82;->C()Landroidx/appcompat/view/menu/bh1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bh1;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/c82;->C()Landroidx/appcompat/view/menu/bh1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/bh1;->b(J)V

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/c82;->A()I

    move-result v2

    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    const-string v4, "action"

    const-string v5, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v4, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    shl-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    const-string p2, "com.google.android.gms"

    const-string v1, "UploadAlarm"

    invoke-static {v0, p1, p2, v1}, Landroidx/appcompat/view/menu/al1;->c(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final z()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m82;->u()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Unscheduling upload"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/c82;->d:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/c82;->B()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/c82;->C()Landroidx/appcompat/view/menu/bh1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bh1;->a()V

    invoke-direct {p0}, Landroidx/appcompat/view/menu/c82;->D()V

    return-void
.end method
