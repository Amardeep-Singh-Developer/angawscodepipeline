import { CommonModule } from '@angular/common';
import { Component, OnInit, } from '@angular/core';
import { FormBuilder,Validators, UntypedFormGroup, FormsModule, ReactiveFormsModule } from '@angular/forms';
import { Router } from '@angular/router';
@Component({
  selector: 'app-login',
  standalone: true,
   imports: [CommonModule,FormsModule,
    ReactiveFormsModule],
  templateUrl: './login.component.html',
  styleUrl: './login.component.css'
})
export class LoginComponent {
 loginForm!: UntypedFormGroup;
  submitted = false;
  constructor(private fb:FormBuilder,public router:Router){
  }

  ngOnInit(){
    this.loginForm = this.fb.group({
      username:['',Validators.required],
      password:['',[Validators.required, Validators.minLength(5),Validators.maxLength(10)]]
    })
  }

  get f() {
    return this.loginForm.controls;
  }

  SubmitForm(){

  }
}
